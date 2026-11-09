//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for listing the persisted action history for a data holder.
class ListActionsForDataHolderUseCase {

    // MARK: - Properties

    let actionRepository: ActionRepository

    // MARK: - Lifecycle

    init(actionRepository: ActionRepository) {
        self.actionRepository = actionRepository
    }

    // MARK: - Methods

    func execute(input: ListActionsForDataHolderInput) async throws -> ListOutput<Action> {
        try await actionRepository.listForDataHolder(
            dataHolderId: input.dataHolderId,
            limit: input.limit,
            nextToken: input.nextToken
        )
    }
}
