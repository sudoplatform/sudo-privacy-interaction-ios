//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Repository responsible for accessing and manipulating virtual presences.
///
/// Concrete implementations live under `Source/Internal/Data/Repositories`.
protocol VirtualPresenceRepository: AnyObject {

    /// Connect a new virtual presence using an OAuth authorization code.
    func connect(withAuthCode input: ConnectVirtualPresenceWithAuthCodeInput) async throws -> VirtualPresence

    /// Connect a new virtual presence using a pre-obtained OAuth refresh token.
    func connect(withRefreshToken input: ConnectVirtualPresenceWithRefreshTokenInput) async throws -> VirtualPresence

    /// Disconnect an existing virtual presence.
    func disconnect(id: String) async throws -> VirtualPresence

    /// Rescan an existing virtual presence for new data holders.
    func rescan(input: RescanVirtualPresenceInput) async throws -> VirtualPresence

    /// List virtual presences owned by the signed-in user.
    func list(limit: Int?, nextToken: String?) async throws -> ListOutput<VirtualPresence>
}
