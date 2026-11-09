//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for validating a virtual presence's provider grant and returning its reconciled state.
class RefreshVirtualPresenceStateUseCase {

    // MARK: - Properties

    let virtualPresenceRepository: VirtualPresenceRepository

    // MARK: - Lifecycle

    init(virtualPresenceRepository: VirtualPresenceRepository) {
        self.virtualPresenceRepository = virtualPresenceRepository
    }

    // MARK: - Methods

    func execute(id: String) async throws -> VirtualPresence {
        try await virtualPresenceRepository.refreshState(id: id)
    }
}
