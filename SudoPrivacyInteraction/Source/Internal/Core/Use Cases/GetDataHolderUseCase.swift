//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for fetching a single data holder by its identifier.
class GetDataHolderUseCase {

    // MARK: - Properties

    let dataHolderRepository: DataHolderRepository

    // MARK: - Lifecycle

    init(dataHolderRepository: DataHolderRepository) {
        self.dataHolderRepository = dataHolderRepository
    }

    // MARK: - Methods

    func execute(id: String) async throws -> DataHolder? {
        try await dataHolderRepository.get(id: id)
    }
}
