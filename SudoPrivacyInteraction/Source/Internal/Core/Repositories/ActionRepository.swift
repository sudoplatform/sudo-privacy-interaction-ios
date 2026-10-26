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
    func listAvailable(dataHolderId: String) async throws -> ListOutput<AvailableAction>

    /// Initiate an action against a data holder relationship.
    func initiate(input: InitiateActionInput) async throws -> Action

    /// Confirm that an assisted or delegated action was completed.
    func confirmOutcome(id: String) async throws -> Action

    /// Get a single action by its identifier.
    func get(id: String) async throws -> Action?
}
