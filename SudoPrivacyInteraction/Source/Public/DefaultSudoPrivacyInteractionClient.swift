//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoApiClient
import SudoConfigManager
import SudoLogging
import SudoUser

/// Default client API endpoint for interacting with the Privacy Interaction service.
public class DefaultSudoPrivacyInteractionClient: SudoPrivacyInteractionClient {

    private enum Constants {
        /// Service name used to look up Privacy Interaction configuration in sudoplatformconfig.json.
        static let configNamespace = "pimService"
    }

    // MARK: - Properties

    /// Used to make GraphQL requests to the Privacy Interaction service.
    let graphQLClient: SudoApiClient

    /// Used to determine the signed-in state of the user.
    let userClient: SudoUserClient

    /// Used to log diagnostic and error information.
    let logger: SudoLogging.Logger

    // MARK: - Properties: Use cases

    /// Factory used to generate the core use cases invoked by the public API.
    let useCaseFactory: UseCaseFactory

    /// Manages the lifecycle of real-time GraphQL subscriptions.
    let subscriptionManager: SubscriptionManager

    // MARK: - Lifecycle

    /// Initialize a `DefaultSudoPrivacyInteractionClient`.
    ///
    /// Resolves the Privacy Interaction `SudoApiClient` from the shared
    /// `SudoApiClientManager` using the service configuration in sudoplatformconfig.json.
    ///
    /// - Parameters:
    ///   - userClient: Client used to determine the signed-in state of the user.
    ///   - logger: Logger used for diagnostic and error information.
    /// - Throws: `SudoPrivacyInteractionError.invalidConfig` if the service configuration is missing.
    public convenience init(
        userClient: SudoUserClient,
        logger: SudoLogging.Logger = .privacyInteractionSDKLogger
    ) throws {
        guard let graphQLClient = try SudoApiClientManager.instance?.getClient(
            sudoUserClient: userClient,
            configNamespace: Constants.configNamespace
        ) else {
            throw SudoPrivacyInteractionError.invalidConfig
        }
        self.init(userClient: userClient, graphQLClient: graphQLClient, logger: logger)
    }

    /// Designated initializer.
    ///
    /// - Parameters:
    ///   - userClient: Client used to determine the signed-in state of the user.
    ///   - graphQLClient: Client used to make GraphQL requests to the Privacy Interaction service.
    ///   - logger: Logger used for diagnostic and error information.
    public init(
        userClient: SudoUserClient,
        graphQLClient: SudoApiClient,
        logger: SudoLogging.Logger = .privacyInteractionSDKLogger
    ) {
        self.userClient = userClient
        self.graphQLClient = graphQLClient
        self.logger = logger
        let virtualPresenceRepository = DefaultVirtualPresenceRepository(
            sudoApiClient: graphQLClient,
            logger: logger
        )
        let dataHolderRepository = DefaultDataHolderRepository(
            sudoApiClient: graphQLClient,
            logger: logger
        )
        let analysisResultRepository = DefaultAnalysisResultRepository(
            sudoApiClient: graphQLClient,
            logger: logger
        )
        let providerConfigurationRepository = DefaultProviderConfigurationRepository(
            sudoApiClient: graphQLClient,
            logger: logger
        )
        let organizationAnalysisRepository = DefaultOrganizationAnalysisRepository(
            sudoApiClient: graphQLClient,
            logger: logger
        )
        let actionRepository = DefaultActionRepository(
            sudoApiClient: graphQLClient,
            logger: logger
        )
        self.useCaseFactory = UseCaseFactory(
            virtualPresenceRepository: virtualPresenceRepository,
            dataHolderRepository: dataHolderRepository,
            analysisResultRepository: analysisResultRepository,
            providerConfigurationRepository: providerConfigurationRepository,
            organizationAnalysisRepository: organizationAnalysisRepository,
            actionRepository: actionRepository
        )
        self.subscriptionManager = DefaultSubscriptionManager(graphQLClient: graphQLClient, logger: logger)
    }

    /// Initializer used internally to inject a mock use case factory and subscription manager for testing.
    init(
        userClient: SudoUserClient,
        graphQLClient: SudoApiClient,
        useCaseFactory: UseCaseFactory,
        subscriptionManager: SubscriptionManager? = nil,
        logger: SudoLogging.Logger = .privacyInteractionSDKLogger
    ) {
        self.userClient = userClient
        self.graphQLClient = graphQLClient
        self.logger = logger
        self.useCaseFactory = useCaseFactory
        self.subscriptionManager = subscriptionManager
            ?? DefaultSubscriptionManager(graphQLClient: graphQLClient, logger: logger)
    }

    public func reset() async throws {
        await subscriptionManager.unsubscribeAll()
        // TODO: Clear cached data and purge pending operations.
    }

    // MARK: - Virtual Presences

    public func connectVirtualPresenceWithAuthCode(
        withInput input: ConnectVirtualPresenceWithAuthCodeInput
    ) async throws -> VirtualPresence {
        let useCase = useCaseFactory.generateConnectVirtualPresenceUseCase()
        return try await useCase.execute(withAuthCode: input)
    }

    public func connectVirtualPresenceWithRefreshToken(
        withInput input: ConnectVirtualPresenceWithRefreshTokenInput
    ) async throws -> VirtualPresence {
        let useCase = useCaseFactory.generateConnectVirtualPresenceUseCase()
        return try await useCase.execute(withRefreshToken: input)
    }

    public func disconnectVirtualPresence(withId id: String) async throws -> VirtualPresence {
        let useCase = useCaseFactory.generateDisconnectVirtualPresenceUseCase()
        return try await useCase.execute(id: id)
    }

    public func listVirtualPresences(withInput input: ListVirtualPresencesInput) async throws -> ListOutput<VirtualPresence> {
        let useCase = useCaseFactory.generateListVirtualPresencesUseCase()
        return try await useCase.execute(input: input)
    }

    // MARK: - Data Holders

    public func getDataHolder(withId id: String) async throws -> DataHolder? {
        let useCase = useCaseFactory.generateGetDataHolderUseCase()
        return try await useCase.execute(id: id)
    }

    public func listDataHolders(withInput input: ListDataHoldersInput) async throws -> ListOutput<DataHolder> {
        let useCase = useCaseFactory.generateListDataHoldersUseCase()
        return try await useCase.execute(input: input)
    }

    public func listDataHolderScanSummaries(
        withInput input: ListDataHolderScanSummariesInput
    ) async throws -> ListOutput<DataHolderScanSummary> {
        let useCase = useCaseFactory.generateListDataHolderScanSummariesUseCase()
        return try await useCase.execute(input: input)
    }

    public func archiveDataHolder(withId id: String) async throws -> DataHolder {
        let useCase = useCaseFactory.generateArchiveDataHolderUseCase()
        return try await useCase.execute(id: id)
    }

    public func unarchiveDataHolder(withId id: String) async throws -> DataHolder {
        let useCase = useCaseFactory.generateUnarchiveDataHolderUseCase()
        return try await useCase.execute(id: id)
    }

    // MARK: - Analysis Results

    public func getAnalysisResult(withId id: String) async throws -> AnalysisResult? {
        let useCase = useCaseFactory.generateGetAnalysisResultUseCase()
        return try await useCase.execute(id: id)
    }

    public func listAnalysisResults(withInput input: ListAnalysisResultsInput) async throws -> ListOutput<AnalysisResult> {
        let useCase = useCaseFactory.generateListAnalysisResultsUseCase()
        return try await useCase.execute(input: input)
    }

    // MARK: - Organization Analysis

    public func getOrganizationAnalysis(
        withInput input: GetOrganizationAnalysisInput
    ) async throws -> OrganizationAnalysis? {
        let useCase = useCaseFactory.generateGetOrganizationAnalysisUseCase()
        return try await useCase.execute(input: input)
    }

    // MARK: - Provider Configuration

    public func getProviderConfiguration() async throws -> [ProviderConfiguration] {
        let useCase = useCaseFactory.generateGetProviderConfigurationUseCase()
        return try await useCase.execute()
    }

    // MARK: - Actions

    public func listAvailableActions(forDataHolderId dataHolderId: String) async throws -> ListOutput<AvailableAction> {
        let useCase = useCaseFactory.generateListAvailableActionsUseCase()
        return try await useCase.execute(dataHolderId: dataHolderId)
    }

    public func initiateAction(withInput input: InitiateActionInput) async throws -> Action {
        let useCase = useCaseFactory.generateInitiateActionUseCase()
        return try await useCase.execute(input: input)
    }

    public func confirmActionOutcome(withId id: String) async throws -> Action {
        let useCase = useCaseFactory.generateConfirmActionOutcomeUseCase()
        return try await useCase.execute(id: id)
    }

    public func getAction(withId id: String) async throws -> Action? {
        let useCase = useCaseFactory.generateGetActionUseCase()
        return try await useCase.execute(id: id)
    }

    // MARK: - Rescan

    public func rescanVirtualPresence(withInput input: RescanVirtualPresenceInput) async throws -> VirtualPresence {
        let useCase = useCaseFactory.generateRescanVirtualPresenceUseCase()
        return try await useCase.execute(input: input)
    }

    // MARK: - Subscriptions

    public func subscribeToVirtualPresence(
        subscriptionId: String,
        subscriber: VirtualPresenceSubscriber
    ) async throws {
        let owner = try await resolveOwner()
        await subscriptionManager.subscribeToVirtualPresence(id: subscriptionId, owner: owner, subscriber: subscriber)
    }

    public func unsubscribeFromVirtualPresence(subscriptionId: String) {
        Task { await subscriptionManager.unsubscribeFromVirtualPresence(id: subscriptionId) }
    }

    public func subscribeToDataHolders(
        subscriptionId: String,
        subscriber: DataHolderSubscriber
    ) async throws {
        let owner = try await resolveOwner()
        await subscriptionManager.subscribeToDataHolders(id: subscriptionId, owner: owner, subscriber: subscriber)
    }

    public func unsubscribeFromDataHolders(subscriptionId: String) {
        Task { await subscriptionManager.unsubscribeFromDataHolders(id: subscriptionId) }
    }

    public func subscribeToAnalysisResult(
        subscriptionId: String,
        subscriber: AnalysisResultSubscriber
    ) async throws {
        let owner = try await resolveOwner()
        await subscriptionManager.subscribeToAnalysisResult(id: subscriptionId, owner: owner, subscriber: subscriber)
    }

    public func unsubscribeFromAnalysisResult(subscriptionId: String) {
        Task { await subscriptionManager.unsubscribeFromAnalysisResult(id: subscriptionId) }
    }

    public func subscribeToAction(
        subscriptionId: String,
        subscriber: ActionSubscriber
    ) async throws {
        let owner = try await resolveOwner()
        await subscriptionManager.subscribeToAction(id: subscriptionId, owner: owner, subscriber: subscriber)
    }

    public func unsubscribeFromAction(subscriptionId: String) {
        Task { await subscriptionManager.unsubscribeFromAction(id: subscriptionId) }
    }

    // MARK: - Helpers

    /// Resolves the signed-in user's owner (subject), used as the subscription filter.
    private func resolveOwner() async throws -> String {
        guard let owner = try? await userClient.getSubject() else {
            throw SudoPrivacyInteractionError.notSignedIn
        }
        return owner
    }
}
