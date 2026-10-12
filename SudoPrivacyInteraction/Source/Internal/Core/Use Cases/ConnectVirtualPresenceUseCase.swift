//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for connecting a new virtual presence.
class ConnectVirtualPresenceUseCase {

    // MARK: - Properties

    let virtualPresenceRepository: VirtualPresenceRepository

    // MARK: - Lifecycle

    init(virtualPresenceRepository: VirtualPresenceRepository) {
        self.virtualPresenceRepository = virtualPresenceRepository
    }

    // MARK: - Methods

    func execute(withAuthCode input: ConnectVirtualPresenceWithAuthCodeInput) async throws -> VirtualPresence {
        try await virtualPresenceRepository.connect(withAuthCode: input)
    }

    func execute(withRefreshToken input: ConnectVirtualPresenceWithRefreshTokenInput) async throws -> VirtualPresence {
        try await virtualPresenceRepository.connect(withRefreshToken: input)
    }
}
