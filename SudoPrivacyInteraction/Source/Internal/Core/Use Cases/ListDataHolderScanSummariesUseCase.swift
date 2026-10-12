//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for listing the scan summaries captured for a data holder.
class ListDataHolderScanSummariesUseCase {

    // MARK: - Properties

    let dataHolderRepository: DataHolderRepository

    // MARK: - Lifecycle

    init(dataHolderRepository: DataHolderRepository) {
        self.dataHolderRepository = dataHolderRepository
    }

    // MARK: - Methods

    func execute(input: ListDataHolderScanSummariesInput) async throws -> ListOutput<DataHolderScanSummary> {
        try await dataHolderRepository.listScanSummaries(
            dataHolderId: input.dataHolderId,
            limit: input.limit,
            nextToken: input.nextToken
        )
    }
}
