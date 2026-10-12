//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for confirming that an action was completed.
class ConfirmActionOutcomeUseCase {

    // MARK: - Properties

    let actionRepository: ActionRepository

    // MARK: - Lifecycle

    init(actionRepository: ActionRepository) {
        self.actionRepository = actionRepository
    }

    // MARK: - Methods

    func execute(id: String) async throws -> Action {
        try await actionRepository.confirmOutcome(id: id)
    }
}
