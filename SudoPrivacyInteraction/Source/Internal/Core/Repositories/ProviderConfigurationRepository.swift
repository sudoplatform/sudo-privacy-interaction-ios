//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Repository responsible for accessing provider configuration.
///
/// Concrete implementations live under `Source/Internal/Data/Repositories`.
protocol ProviderConfigurationRepository: AnyObject {

    /// Get the provider configurations required to support the provider OAuth flow.
    func get() async throws -> [ProviderConfiguration]
}
