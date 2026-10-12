//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for disconnecting an existing virtual presence.
class DisconnectVirtualPresenceUseCase {

    // MARK: - Properties

    let virtualPresenceRepository: VirtualPresenceRepository

    // MARK: - Lifecycle

    init(virtualPresenceRepository: VirtualPresenceRepository) {
        self.virtualPresenceRepository = virtualPresenceRepository
    }

    // MARK: - Methods

    func execute(id: String) async throws -> VirtualPresence {
        try await virtualPresenceRepository.disconnect(id: id)
    }
}
