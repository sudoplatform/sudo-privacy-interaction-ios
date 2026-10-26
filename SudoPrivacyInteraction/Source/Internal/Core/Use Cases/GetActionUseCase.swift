//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for fetching a single action by its identifier.
class GetActionUseCase {

    // MARK: - Properties

    let actionRepository: ActionRepository

    // MARK: - Lifecycle

    init(actionRepository: ActionRepository) {
        self.actionRepository = actionRepository
    }

    // MARK: - Methods

    func execute(id: String) async throws -> Action? {
        try await actionRepository.get(id: id)
    }
}
