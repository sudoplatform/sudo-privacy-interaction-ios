//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for archiving a data holder.
class ArchiveDataHolderUseCase {

    // MARK: - Properties

    let dataHolderRepository: DataHolderRepository

    // MARK: - Lifecycle

    init(dataHolderRepository: DataHolderRepository) {
        self.dataHolderRepository = dataHolderRepository
    }

    // MARK: - Methods

    func execute(id: String) async throws -> DataHolder {
        try await dataHolderRepository.archive(id: id)
    }
}
