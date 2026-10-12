//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for listing the virtual presences owned by the signed-in user.
class ListVirtualPresencesUseCase {

    // MARK: - Properties

    let virtualPresenceRepository: VirtualPresenceRepository

    // MARK: - Lifecycle

    init(virtualPresenceRepository: VirtualPresenceRepository) {
        self.virtualPresenceRepository = virtualPresenceRepository
    }

    // MARK: - Methods

    func execute(input: ListVirtualPresencesInput) async throws -> ListOutput<VirtualPresence> {
        try await virtualPresenceRepository.list(limit: input.limit, nextToken: input.nextToken)
    }
}
