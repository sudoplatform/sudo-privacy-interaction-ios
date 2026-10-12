//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for rescanning an existing virtual presence for new data holders.
class RescanVirtualPresenceUseCase {

    // MARK: - Properties

    let virtualPresenceRepository: VirtualPresenceRepository

    // MARK: - Lifecycle

    init(virtualPresenceRepository: VirtualPresenceRepository) {
        self.virtualPresenceRepository = virtualPresenceRepository
    }

    // MARK: - Methods

    func execute(input: RescanVirtualPresenceInput) async throws -> VirtualPresence {
        try await virtualPresenceRepository.rescan(input: input)
    }
}
