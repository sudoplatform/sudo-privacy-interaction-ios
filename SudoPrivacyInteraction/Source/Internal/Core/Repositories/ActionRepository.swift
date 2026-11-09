//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Repository responsible for listing and initiating actions against data holders.
///
/// Concrete implementations live under `Source/Internal/Data/Repositories`.
protocol ActionRepository: AnyObject {

    /// List the actions currently available for a data holder relationship.
    ///
    /// - Parameters:
    ///   - dataHolderId: Identifier of the data holder whose available actions to list.
    ///   - includeCompleted: When `true`, include actions whose most recent persisted instance is
    ///     in a completed state. When `nil`, the service default applies.
    func listAvailable(dataHolderId: String, includeCompleted: Bool?) async throws -> ListOutput<AvailableAction>

    /// List the persisted action history for a data holder.
    ///
    /// Returns every action that has been initiated against the data holder (all intents, all
    /// statuses, every attempt), ordered newest-first.
    ///
    /// - Parameters:
    ///   - dataHolderId: Identifier of the data holder whose action history to list.
    ///   - limit: Maximum number of items to return in a single page.
    ///   - nextToken: Token identifying the page of results to return.
    func listForDataHolder(dataHolderId: String, limit: Int?, nextToken: String?) async throws -> ListOutput<Action>

    /// Initiate an action against a data holder relationship.
    func initiate(input: InitiateActionInput) async throws -> Action

    /// Confirm that an assisted or delegated action was completed.
    func confirmOutcome(id: String) async throws -> Action

    /// Get a single action by its identifier.
    func get(id: String) async throws -> Action?
}
