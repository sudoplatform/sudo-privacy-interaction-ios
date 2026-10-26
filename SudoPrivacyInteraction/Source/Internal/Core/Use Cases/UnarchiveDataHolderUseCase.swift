//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for unarchiving a previously archived data holder.
///
/// Only valid from the archived state; returns the data holder to the monitored state.
class UnarchiveDataHolderUseCase {

    // MARK: - Properties

    let dataHolderRepository: DataHolderRepository

    // MARK: - Lifecycle

    init(dataHolderRepository: DataHolderRepository) {
        self.dataHolderRepository = dataHolderRepository
    }

    // MARK: - Methods

    func execute(id: String) async throws -> DataHolder {
        try await dataHolderRepository.unarchive(id: id)
    }
}
