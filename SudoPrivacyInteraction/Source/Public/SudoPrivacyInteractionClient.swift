//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Generic type associated with API completion/closures. Generic type `O` is the expected output result in a
/// success case.
public typealias ClientCompletion<O> = @Sendable (Swift.Result<O, Error>) -> Void

/// Client used to interface with the Sudo Platform Privacy Interaction service.
///
/// It is recommended to code to this interface, rather than the implementation class
/// (`DefaultSudoPrivacyInteractionClient`) as the implementation class is only meant to be used for
/// initializing an instance of the client.
public protocol SudoPrivacyInteractionClient: AnyObject {

    // MARK: - Lifecycle

    /// Removes all keys associated with this client, resets any cached data, cleans up subscriptions,
    /// and purges any pending operations.
    ///
    /// It is important to note that this will clear ALL cached data related to all Sudo services.
    func reset() async throws

    // MARK: - Virtual Presences

    /// Connect a new virtual presence using an OAuth authorization code obtained from the provider
    /// consent flow.
    ///
    /// - Parameter input: Parameters used to connect the virtual presence.
    /// - Returns: The newly connected `VirtualPresence`.
    /// - Throws: `SudoPrivacyInteractionError`.
    func connectVirtualPresenceWithAuthCode(
        withInput input: ConnectVirtualPresenceWithAuthCodeInput
    ) async throws -> VirtualPresence

    /// Connect a new virtual presence using a pre-obtained OAuth refresh token.
    ///
    /// - Parameter input: Parameters used to connect the virtual presence.
    /// - Returns: The newly connected `VirtualPresence`.
    /// - Throws: `SudoPrivacyInteractionError`.
    func connectVirtualPresenceWithRefreshToken(
        withInput input: ConnectVirtualPresenceWithRefreshTokenInput
    ) async throws -> VirtualPresence

    /// Disconnect an existing virtual presence.
    ///
    /// - Parameter id: Unique identifier of the virtual presence to disconnect.
    /// - Returns: The disconnected `VirtualPresence`.
    /// - Throws: `SudoPrivacyInteractionError`.
    func disconnectVirtualPresence(withId id: String) async throws -> VirtualPresence

    /// List the virtual presences owned by the signed-in user.
    ///
    /// - Parameter input: Parameters used to page the results.
    /// - Returns: A paginated list of `VirtualPresence`.
    /// - Throws: `SudoPrivacyInteractionError`.
    func listVirtualPresences(withInput input: ListVirtualPresencesInput) async throws -> ListOutput<VirtualPresence>

    // MARK: - Data Holders

    /// Get a single data holder by its identifier.
    ///
    /// - Parameter id: Unique identifier of the data holder.
    /// - Returns: The matching `DataHolder`, or `nil` if no data holder exists with that identifier.
    /// - Throws: `SudoPrivacyInteractionError`.
    func getDataHolder(withId id: String) async throws -> DataHolder?

    /// List the data holders discovered for a virtual presence.
    ///
    /// - Parameter input: Parameters identifying the virtual presence and paging the results.
    /// - Returns: A paginated list of `DataHolder`.
    /// - Throws: `SudoPrivacyInteractionError`.
    func listDataHolders(withInput input: ListDataHoldersInput) async throws -> ListOutput<DataHolder>

    /// List the scan summaries captured for a data holder, most recent first.
    ///
    /// - Parameter input: Parameters identifying the data holder and paging the results.
    /// - Returns: A paginated list of `DataHolderScanSummary`.
    /// - Throws: `SudoPrivacyInteractionError`.
    func listDataHolderScanSummaries(
        withInput input: ListDataHolderScanSummariesInput
    ) async throws -> ListOutput<DataHolderScanSummary>

    // MARK: - Analysis Results

    /// Get a single analysis result by its identifier, including its typed data.
    ///
    /// - Parameter id: Unique identifier of the analysis result.
    /// - Returns: The matching `AnalysisResult`, or `nil` if none exists with that identifier.
    /// - Throws: `SudoPrivacyInteractionError`.
    func getAnalysisResult(withId id: String) async throws -> AnalysisResult?

    /// List the analysis results for a virtual presence.
    ///
    /// - Parameter input: Parameters identifying the virtual presence and paging the results.
    /// - Returns: A paginated list of `AnalysisResult`.
    /// - Throws: `SudoPrivacyInteractionError`.
    func listAnalysisResults(withInput input: ListAnalysisResultsInput) async throws -> ListOutput<AnalysisResult>

    // MARK: - Organization Analysis

    /// Analyze (read-through) and return the shared, organization-generic analysis for a domain.
    ///
    /// Returns a result with `.pending` status when an asynchronous source is still resolving;
    /// re-query for the terminal result.
    ///
    /// - Parameter input: The domain to analyze and options controlling analysis mode/resolution.
    /// - Returns: The `OrganizationAnalysis`, or `nil` if none exists for the domain.
    /// - Throws: `SudoPrivacyInteractionError`.
    func getOrganizationAnalysis(withInput input: GetOrganizationAnalysisInput) async throws -> OrganizationAnalysis?

    // MARK: - Provider Configuration

    /// Get the provider configurations required to support the provider OAuth flow.
    ///
    /// - Returns: The list of `ProviderConfiguration`, one per supported provider.
    /// - Throws: `SudoPrivacyInteractionError`.
    func getProviderConfiguration() async throws -> [ProviderConfiguration]

    // MARK: - Actions

    /// List the actions currently available for a data holder relationship.
    ///
    /// - Parameter dataHolderId: Identifier of the data holder whose available actions to list.
    /// - Returns: A paginated list of `AvailableAction`.
    /// - Throws: `SudoPrivacyInteractionError`.
    func listAvailableActions(forDataHolderId dataHolderId: String) async throws -> ListOutput<AvailableAction>

    /// Initiate an action against a data holder relationship.
    ///
    /// - Parameter input: Parameters identifying the data holder, intent, and fulfilment method.
    /// - Returns: The initiated `Action`.
    /// - Throws: `SudoPrivacyInteractionError`.
    func initiateAction(withInput input: InitiateActionInput) async throws -> Action

    /// Confirm that an assisted or delegated action was completed.
    ///
    /// - Parameter id: Identifier of the action to confirm.
    /// - Returns: The updated `Action`.
    /// - Throws: `SudoPrivacyInteractionError`.
    func confirmActionOutcome(withId id: String) async throws -> Action

    // MARK: - Rescan

    /// Rescan an existing virtual presence for new data holders.
    ///
    /// The rescan proceeds from the virtual presence's last scan date forward.
    ///
    /// - Parameter input: Parameters identifying the virtual presence and controlling the scan.
    /// - Returns: The updated `VirtualPresence`.
    /// - Throws: `SudoPrivacyInteractionError`.
    func rescanVirtualPresence(withInput input: RescanVirtualPresenceInput) async throws -> VirtualPresence

    // MARK: - Subscriptions

    /// Subscribe to virtual presence state events, emitted when a virtual presence changes state
    /// (e.g. to `.needsReauth` or `.scanning`).
    ///
    /// - Parameters:
    ///   - subscriptionId: A unique identifier for this subscription, used to unsubscribe later.
    ///   - subscriber: Callback implementation invoked when a virtual presence event occurs.
    /// - Throws: `SudoPrivacyInteractionError.notSignedIn` if there is no signed-in user.
    func subscribeToVirtualPresence(subscriptionId: String, subscriber: VirtualPresenceSubscriber) async throws

    /// Unsubscribe from virtual presence state events.
    ///
    /// - Parameter subscriptionId: The identifier of the subscription to cancel.
    func unsubscribeFromVirtualPresence(subscriptionId: String)

    /// Subscribe to data holder events, emitted when data holders are discovered or updated
    /// during scanning.
    ///
    /// - Parameters:
    ///   - subscriptionId: A unique identifier for this subscription, used to unsubscribe later.
    ///   - subscriber: Callback implementation invoked when data holder events occur.
    /// - Throws: `SudoPrivacyInteractionError.notSignedIn` if there is no signed-in user.
    func subscribeToDataHolders(subscriptionId: String, subscriber: DataHolderSubscriber) async throws

    /// Unsubscribe from data holder events.
    ///
    /// - Parameter subscriptionId: The identifier of the subscription to cancel.
    func unsubscribeFromDataHolders(subscriptionId: String)

    /// Subscribe to analysis result events, emitted when an analysis result changes status or is
    /// updated. The delivered `AnalysisResultUpdate` is a lightweight notification; use
    /// `getAnalysisResult` to fetch the full typed data.
    ///
    /// - Parameters:
    ///   - subscriptionId: A unique identifier for this subscription, used to unsubscribe later.
    ///   - subscriber: Callback implementation invoked when an analysis result event occurs.
    /// - Throws: `SudoPrivacyInteractionError.notSignedIn` if there is no signed-in user.
    func subscribeToAnalysisResult(subscriptionId: String, subscriber: AnalysisResultSubscriber) async throws

    /// Unsubscribe from analysis result events.
    ///
    /// - Parameter subscriptionId: The identifier of the subscription to cancel.
    func unsubscribeFromAnalysisResult(subscriptionId: String)

    /// Subscribe to action events, emitted each time an action is updated.
    ///
    /// - Parameters:
    ///   - subscriptionId: A unique identifier for this subscription, used to unsubscribe later.
    ///   - subscriber: Callback implementation invoked when an action event occurs.
    /// - Throws: `SudoPrivacyInteractionError.notSignedIn` if there is no signed-in user.
    func subscribeToAction(subscriptionId: String, subscriber: ActionSubscriber) async throws

    /// Unsubscribe from action events.
    ///
    /// - Parameter subscriptionId: The identifier of the subscription to cancel.
    func unsubscribeFromAction(subscriptionId: String)
}
