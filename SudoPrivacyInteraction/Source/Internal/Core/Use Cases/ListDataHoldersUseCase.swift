//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for listing the data holders discovered for a virtual presence.
class ListDataHoldersUseCase {

    // MARK: - Properties

    let dataHolderRepository: DataHolderRepository

    // MARK: - Lifecycle

    init(dataHolderRepository: DataHolderRepository) {
        self.dataHolderRepository = dataHolderRepository
    }

    // MARK: - Methods

    func execute(input: ListDataHoldersInput) async throws -> ListOutput<DataHolder> {
        try await dataHolderRepository.list(
            virtualPresenceId: input.virtualPresenceId,
            limit: input.limit,
            nextToken: input.nextToken
        )
    }
}
