//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Opaque provider configuration required by consumers to support the provider OAuth flow.
///
/// The `data` payload is base-64 encoded and intended to be passed through to the provider
/// integration; its contents are not interpreted by the SDK.
public struct ProviderConfiguration: Equatable, Sendable {

    /// Base-64 encoded, opaque provider configuration data.
    public let data: String

    public init(data: String) {
        self.data = data
    }
}
