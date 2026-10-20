//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// A single provider client configuration required by consumers to support the provider OAuth flow.
///
/// This is the decoded form of the opaque, base-64 encoded configuration data returned by the
/// service; the SDK decodes it into one `ProviderConfiguration` per supported provider.
public struct ProviderConfiguration: Equatable, Sendable {

    /// Human-readable provider name (e.g. "google").
    public let name: String

    /// The kind of virtual presence this provider backs (e.g. `.email`).
    public let providerType: ProviderType

    /// OAuth client id.
    public let clientId: String

    public init(name: String, providerType: ProviderType, clientId: String) {
        self.name = name
        self.providerType = providerType
        self.clientId = clientId
    }
}
