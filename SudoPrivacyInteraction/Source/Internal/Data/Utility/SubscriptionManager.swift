//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoApiClient
import SudoLogging

/// Manages the lifecycle of the Privacy Interaction GraphQL subscriptions.
///
/// Responsible for opening AppSync subscriptions, multiplexing many subscribers onto a single
/// live subscription per event type, forwarding connection-state and data events to the
/// registered subscribers, and tearing subscriptions down when no subscribers remain.
protocol SubscriptionManager: AnyObject, Sendable {

    func subscribeToVirtualPresence(id: String, owner: String, subscriber: VirtualPresenceSubscriber) async
    func unsubscribeFromVirtualPresence(id: String) async

    func subscribeToDataHolders(id: String, owner: String, subscriber: DataHolderSubscriber) async
    func unsubscribeFromDataHolders(id: String) async

    func subscribeToAnalysisResult(id: String, owner: String, subscriber: AnalysisResultSubscriber) async
    func unsubscribeFromAnalysisResult(id: String) async

    func subscribeToAction(id: String, owner: String, subscriber: ActionSubscriber) async
    func unsubscribeFromAction(id: String) async

    func unsubscribeAll() async
}

/// Default `SubscriptionManager` backed by `SudoApiClient` AppSync subscriptions.
actor DefaultSubscriptionManager: SubscriptionManager {

    // MARK: - Supplementary

    /// The GraphQL subscription event types this manager multiplexes.
    private enum EventType: CaseIterable {
        case virtualPresence
        case dataHolders
        case analysisResult
        case action
    }

    /// A live AppSync subscription plus whether it has reached the connected state.
    private struct ActiveSubscription {
        let subscription: GraphQLClientSubscription
        var isConnected: Bool
    }

    /// A weakly-held subscriber registered under a caller-supplied id.
    private struct WeakVirtualPresenceSubscriber {
        let id: String
        weak var subscriber: VirtualPresenceSubscriber?
    }

    private struct WeakDataHolderSubscriber {
        let id: String
        weak var subscriber: DataHolderSubscriber?
    }

    private struct WeakAnalysisResultSubscriber {
        let id: String
        weak var subscriber: AnalysisResultSubscriber?
    }

    private struct WeakActionSubscriber {
        let id: String
        weak var subscriber: ActionSubscriber?
    }

    // MARK: - Properties

    private let graphQLClient: SudoApiClient
    private let logger: SudoLogging.Logger

    private let virtualPresenceTransformer = VirtualPresenceEntityTransformer()
    private let dataHoldersUpdateTransformer = DataHoldersUpdateEntityTransformer()
    private let analysisResultUpdateTransformer = AnalysisResultUpdateEntityTransformer()
    private let actionTransformer = ActionEntityTransformer()

    private var virtualPresenceSubscribers: [WeakVirtualPresenceSubscriber] = []
    private var dataHolderSubscribers: [WeakDataHolderSubscriber] = []
    private var analysisResultSubscribers: [WeakAnalysisResultSubscriber] = []
    private var actionSubscribers: [WeakActionSubscriber] = []

    private var subscriptions: [EventType: ActiveSubscription] = [:]

    // MARK: - Lifecycle

    init(graphQLClient: SudoApiClient, logger: SudoLogging.Logger = .privacyInteractionSDKLogger) {
        self.graphQLClient = graphQLClient
        self.logger = logger
    }

    // MARK: - VirtualPresence

    func subscribeToVirtualPresence(id: String, owner: String, subscriber: VirtualPresenceSubscriber) async {
        virtualPresenceSubscribers.removeAll { $0.id == id }
        virtualPresenceSubscribers.append(WeakVirtualPresenceSubscriber(id: id, subscriber: subscriber))

        if let existing = subscriptions[.virtualPresence] {
            if existing.isConnected {
                subscriber.connectionStatusChanged(.connected)
            }
            return
        }
        openVirtualPresenceSubscription(owner: owner)
    }

    func unsubscribeFromVirtualPresence(id: String) async {
        virtualPresenceSubscribers.removeAll { $0.id == id }
        cancelIfNoSubscribers(.virtualPresence)
    }

    private func openVirtualPresenceSubscription(owner: String) {
        let subscription = GraphQL.OnVirtualPresenceUpdateSubscription(owner: owner)
        let active = graphQLClient.subscribe(
            subscription: subscription,
            statusChangeHandler: { [weak self] state in
                guard let self, state == .connected else { return }
                Task { await self.handleConnected(.virtualPresence) }
            },
            completionHandler: { [weak self] _ in
                guard let self else { return }
                Task { await self.handleCompletion(.virtualPresence) }
            },
            resultHandler: { [weak self] result in
                guard let self, case .success(let data) = result else { return }
                Task { await self.handleVirtualPresenceData(data) }
            }
        )
        subscriptions[.virtualPresence] = ActiveSubscription(subscription: active, isConnected: false)
    }

    private func handleVirtualPresenceData(_ data: GraphQL.OnVirtualPresenceUpdateSubscription.Data) {
        guard let fields = data.onVirtualPresenceUpdate?.fragments.virtualPresenceFields else { return }
        let virtualPresence = virtualPresenceTransformer.transform(fields)
        for entry in virtualPresenceSubscribers {
            entry.subscriber?.virtualPresenceUpdated(virtualPresence)
        }
        pruneReleasedSubscribers(.virtualPresence)
    }

    // MARK: - DataHolders

    func subscribeToDataHolders(id: String, owner: String, subscriber: DataHolderSubscriber) async {
        dataHolderSubscribers.removeAll { $0.id == id }
        dataHolderSubscribers.append(WeakDataHolderSubscriber(id: id, subscriber: subscriber))

        if let existing = subscriptions[.dataHolders] {
            if existing.isConnected {
                subscriber.connectionStatusChanged(.connected)
            }
            return
        }
        openDataHoldersSubscription(owner: owner)
    }

    func unsubscribeFromDataHolders(id: String) async {
        dataHolderSubscribers.removeAll { $0.id == id }
        cancelIfNoSubscribers(.dataHolders)
    }

    private func openDataHoldersSubscription(owner: String) {
        let subscription = GraphQL.OnDataHoldersUpdateSubscription(owner: owner)
        let active = graphQLClient.subscribe(
            subscription: subscription,
            statusChangeHandler: { [weak self] state in
                guard let self, state == .connected else { return }
                Task { await self.handleConnected(.dataHolders) }
            },
            completionHandler: { [weak self] _ in
                guard let self else { return }
                Task { await self.handleCompletion(.dataHolders) }
            },
            resultHandler: { [weak self] result in
                guard let self, case .success(let data) = result else { return }
                Task { await self.handleDataHoldersData(data) }
            }
        )
        subscriptions[.dataHolders] = ActiveSubscription(subscription: active, isConnected: false)
    }

    private func handleDataHoldersData(_ data: GraphQL.OnDataHoldersUpdateSubscription.Data) {
        guard let fields = data.onDataHoldersUpdate?.fragments.dataHoldersUpdateFields else { return }
        let dataHolders = dataHoldersUpdateTransformer.transform(fields)
        for entry in dataHolderSubscribers {
            entry.subscriber?.dataHoldersUpdated(dataHolders)
        }
        pruneReleasedSubscribers(.dataHolders)
    }

    // MARK: - AnalysisResult

    func subscribeToAnalysisResult(id: String, owner: String, subscriber: AnalysisResultSubscriber) async {
        analysisResultSubscribers.removeAll { $0.id == id }
        analysisResultSubscribers.append(WeakAnalysisResultSubscriber(id: id, subscriber: subscriber))

        if let existing = subscriptions[.analysisResult] {
            if existing.isConnected {
                subscriber.connectionStatusChanged(.connected)
            }
            return
        }
        openAnalysisResultSubscription(owner: owner)
    }

    func unsubscribeFromAnalysisResult(id: String) async {
        analysisResultSubscribers.removeAll { $0.id == id }
        cancelIfNoSubscribers(.analysisResult)
    }

    private func openAnalysisResultSubscription(owner: String) {
        let subscription = GraphQL.OnAnalysisResultUpdateSubscription(owner: owner)
        let active = graphQLClient.subscribe(
            subscription: subscription,
            statusChangeHandler: { [weak self] state in
                guard let self, state == .connected else { return }
                Task { await self.handleConnected(.analysisResult) }
            },
            completionHandler: { [weak self] _ in
                guard let self else { return }
                Task { await self.handleCompletion(.analysisResult) }
            },
            resultHandler: { [weak self] result in
                guard let self, case .success(let data) = result else { return }
                Task { await self.handleAnalysisResultData(data) }
            }
        )
        subscriptions[.analysisResult] = ActiveSubscription(subscription: active, isConnected: false)
    }

    private func handleAnalysisResultData(_ data: GraphQL.OnAnalysisResultUpdateSubscription.Data) {
        guard let fields = data.onAnalysisResultUpdate?.fragments.analysisResultUpdateFields else { return }
        let update = analysisResultUpdateTransformer.transform(fields)
        for entry in analysisResultSubscribers {
            entry.subscriber?.analysisResultUpdated(update)
        }
        pruneReleasedSubscribers(.analysisResult)
    }

    // MARK: - Action

    func subscribeToAction(id: String, owner: String, subscriber: ActionSubscriber) async {
        actionSubscribers.removeAll { $0.id == id }
        actionSubscribers.append(WeakActionSubscriber(id: id, subscriber: subscriber))

        if let existing = subscriptions[.action] {
            if existing.isConnected {
                subscriber.connectionStatusChanged(.connected)
            }
            return
        }
        openActionSubscription(owner: owner)
    }

    func unsubscribeFromAction(id: String) async {
        actionSubscribers.removeAll { $0.id == id }
        cancelIfNoSubscribers(.action)
    }

    private func openActionSubscription(owner: String) {
        let subscription = GraphQL.OnActionStatusUpdateSubscription(owner: owner)
        let active = graphQLClient.subscribe(
            subscription: subscription,
            statusChangeHandler: { [weak self] state in
                guard let self, state == .connected else { return }
                Task { await self.handleConnected(.action) }
            },
            completionHandler: { [weak self] _ in
                guard let self else { return }
                Task { await self.handleCompletion(.action) }
            },
            resultHandler: { [weak self] result in
                guard let self, case .success(let data) = result else { return }
                Task { await self.handleActionData(data) }
            }
        )
        subscriptions[.action] = ActiveSubscription(subscription: active, isConnected: false)
    }

    private func handleActionData(_ data: GraphQL.OnActionStatusUpdateSubscription.Data) {
        guard let fields = data.onActionStatusUpdate?.fragments.actionFields else { return }
        let action = actionTransformer.transform(fields)
        for entry in actionSubscribers {
            entry.subscriber?.actionUpdated(action)
        }
        pruneReleasedSubscribers(.action)
    }

    // MARK: - unsubscribeAll

    func unsubscribeAll() async {
        virtualPresenceSubscribers.removeAll()
        dataHolderSubscribers.removeAll()
        analysisResultSubscribers.removeAll()
        actionSubscribers.removeAll()
        for (_, active) in subscriptions {
            active.subscription.cancel()
        }
        subscriptions.removeAll()
    }

    // MARK: - Shared event handling

    private func handleConnected(_ eventType: EventType) {
        subscriptions[eventType]?.isConnected = true
        notifyConnectionState(.connected, for: eventType)
        pruneReleasedSubscribers(eventType)
    }

    private func handleCompletion(_ eventType: EventType) {
        notifyConnectionState(.disconnected, for: eventType)
        // A terminal event means the connection is gone; tear it down so a future
        // subscribe re-opens cleanly.
        subscriptions[eventType]?.subscription.cancel()
        subscriptions[eventType] = nil
    }

    private func notifyConnectionState(_ state: ConnectionState, for eventType: EventType) {
        switch eventType {
        case .virtualPresence:
            for entry in virtualPresenceSubscribers {
                entry.subscriber?.connectionStatusChanged(state)
            }
        case .dataHolders:
            for entry in dataHolderSubscribers {
                entry.subscriber?.connectionStatusChanged(state)
            }
        case .analysisResult:
            for entry in analysisResultSubscribers {
                entry.subscriber?.connectionStatusChanged(state)
            }
        case .action:
            for entry in actionSubscribers {
                entry.subscriber?.connectionStatusChanged(state)
            }
        }
    }

    /// Drops subscribers that have been released (their weak reference is now `nil`) and, when none
    /// remain, cancels the live AppSync subscription for the event type.
    ///
    /// Subscribers are held weakly, so a caller that deallocates without calling `unsubscribe` leaves
    /// a dangling entry and an open subscription behind. Calling this on every incoming event keeps the
    /// subscriber lists tidy and tears the subscription down once nobody is listening.
    private func pruneReleasedSubscribers(_ eventType: EventType) {
        switch eventType {
        case .virtualPresence:
            virtualPresenceSubscribers.removeAll { $0.subscriber == nil }
        case .dataHolders:
            dataHolderSubscribers.removeAll { $0.subscriber == nil }
        case .analysisResult:
            analysisResultSubscribers.removeAll { $0.subscriber == nil }
        case .action:
            actionSubscribers.removeAll { $0.subscriber == nil }
        }
        cancelIfNoSubscribers(eventType)
    }

    /// Cancels the live subscription for an event type when no subscribers remain for it.
    private func cancelIfNoSubscribers(_ eventType: EventType) {
        let hasSubscribers: Bool
        switch eventType {
        case .virtualPresence:
            hasSubscribers = virtualPresenceSubscribers.contains { $0.subscriber != nil }
        case .dataHolders:
            hasSubscribers = dataHolderSubscribers.contains { $0.subscriber != nil }
        case .analysisResult:
            hasSubscribers = analysisResultSubscribers.contains { $0.subscriber != nil }
        case .action:
            hasSubscribers = actionSubscribers.contains { $0.subscriber != nil }
        }
        guard !hasSubscribers, let active = subscriptions[eventType] else { return }
        active.subscription.cancel()
        subscriptions[eventType] = nil
    }
}
