//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoApiClient
import SudoLogging

/// Default implementation of `ProviderConfigurationRepository` backed by the Privacy Interaction GraphQL API.
final class DefaultProviderConfigurationRepository: ProviderConfigurationRepository, SudoApiGraphQLExecutor {

    // MARK: - Properties

    let sudoApiClient: SudoApiClient
    let logger: SudoLogging.Logger

    private let transformer = ProviderConfigurationEntityTransformer()

    // MARK: - Lifecycle

    init(sudoApiClient: SudoApiClient, logger: SudoLogging.Logger = .privacyInteractionSDKLogger) {
        self.sudoApiClient = sudoApiClient
        self.logger = logger
    }

    // MARK: - ProviderConfigurationRepository

    func get() async throws -> ProviderConfiguration {
        let query = GraphQL.GetProviderConfigurationQuery()
        let result = try await fetch(query)
        return transformer.transform(result.getProviderConfiguration.fragments.providerConfigurationFields)
    }
}
