//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for retrieving the provider configuration.
class GetProviderConfigurationUseCase {

    // MARK: - Properties

    let providerConfigurationRepository: ProviderConfigurationRepository

    // MARK: - Lifecycle

    init(providerConfigurationRepository: ProviderConfigurationRepository) {
        self.providerConfigurationRepository = providerConfigurationRepository
    }

    // MARK: - Methods

    func execute() async throws -> ProviderConfiguration {
        try await providerConfigurationRepository.get()
    }
}
