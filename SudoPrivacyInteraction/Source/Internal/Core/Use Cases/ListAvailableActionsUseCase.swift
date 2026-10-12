//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for listing the actions available for a data holder relationship.
class ListAvailableActionsUseCase {

    // MARK: - Properties

    let actionRepository: ActionRepository

    // MARK: - Lifecycle

    init(actionRepository: ActionRepository) {
        self.actionRepository = actionRepository
    }

    // MARK: - Methods

    func execute(dataHolderId: String) async throws -> ListOutput<AvailableAction> {
        try await actionRepository.listAvailable(dataHolderId: dataHolderId)
    }
}
