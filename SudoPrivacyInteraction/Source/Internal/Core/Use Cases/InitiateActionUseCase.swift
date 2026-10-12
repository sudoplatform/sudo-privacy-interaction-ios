//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for initiating an action against a data holder relationship.
class InitiateActionUseCase {

    // MARK: - Properties

    let actionRepository: ActionRepository

    // MARK: - Lifecycle

    init(actionRepository: ActionRepository) {
        self.actionRepository = actionRepository
    }

    // MARK: - Methods

    func execute(input: InitiateActionInput) async throws -> Action {
        try await actionRepository.initiate(input: input)
    }
}
