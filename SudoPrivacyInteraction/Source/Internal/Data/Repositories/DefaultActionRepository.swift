//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoApiClient
import SudoLogging

/// Default implementation of `ActionRepository` backed by the Privacy Interaction GraphQL API.
final class DefaultActionRepository: ActionRepository, SudoApiGraphQLExecutor {

    // MARK: - Properties

    let sudoApiClient: SudoApiClient
    let logger: SudoLogging.Logger

    private let transformer = ActionEntityTransformer()

    // MARK: - Lifecycle

    init(sudoApiClient: SudoApiClient, logger: SudoLogging.Logger = .privacyInteractionSDKLogger) {
        self.sudoApiClient = sudoApiClient
        self.logger = logger
    }

    // MARK: - ActionRepository

    func listAvailable(dataHolderId: String) async throws -> ListOutput<AvailableAction> {
        let query = GraphQL.ListAvailableActionsQuery(dataHolderId: dataHolderId)
        let result = try await fetch(query)
        let items = result.listAvailableActions.items.map {
            transformer.transform($0.fragments.availableActionFields)
        }
        return ListOutput(items: items, nextToken: result.listAvailableActions.nextToken)
    }

    func initiate(input: InitiateActionInput) async throws -> Action {
        let mutationInput = GraphQL.InitiateActionInput(
            dataHolderId: input.dataHolderId,
            fulfilmentMethod: Self.transform(input.fulfilmentMethod),
            intent: Self.transform(input.intent)
        )
        let mutation = GraphQL.InitiateActionMutation(input: mutationInput)
        let result = try await perform(mutation)
        return transformer.transform(result.initiateAction.fragments.actionFields)
    }

    func confirmOutcome(id: String) async throws -> Action {
        let mutation = GraphQL.ConfirmActionOutcomeMutation(id: id)
        let result = try await perform(mutation)
        return transformer.transform(result.confirmActionOutcome.fragments.actionFields)
    }

    func get(id: String) async throws -> Action? {
        let query = GraphQL.GetActionQuery(id: id)
        let result = try await fetch(query)
        return result.getAction.map { transformer.transform($0.fragments.actionFields) }
    }

    // MARK: - Input mapping

    private static func transform(_ intent: ActionIntent) -> GraphQL.ActionIntent {
        switch intent {
        case .stopContact:
            return .stopContact
        case .accessMyData:
            return .accessMyData
        case .deleteMyData:
            return .deleteMyData
        case .limitDataUse:
            return .limitDataUse
        case .other:
            return .other
        }
    }

    private static func transform(_ method: ActionFulfilmentMethod) -> GraphQL.ActionFulfilmentMethod {
        switch method {
        case .assisted:
            return .assisted
        case .delegated:
            return .delegated
        }
    }
}
