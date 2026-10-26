//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoApiClient
import SudoLogging

/// Default implementation of `OrganizationAnalysisRepository` backed by the Privacy Interaction GraphQL API.
final class DefaultOrganizationAnalysisRepository: OrganizationAnalysisRepository, SudoApiGraphQLExecutor {

    // MARK: - Properties

    let sudoApiClient: SudoApiClient
    let logger: SudoLogging.Logger

    private let transformer = OrganizationAnalysisEntityTransformer()

    // MARK: - Lifecycle

    init(sudoApiClient: SudoApiClient, logger: SudoLogging.Logger = .privacyInteractionSDKLogger) {
        self.sudoApiClient = sudoApiClient
        self.logger = logger
    }

    // MARK: - OrganizationAnalysisRepository

    func get(input: GetOrganizationAnalysisInput) async throws -> OrganizationAnalysis? {
        let options = Self.transform(input)
        let query = GraphQL.GetOrganizationAnalysisQuery(domain: input.domain, name: input.name, options: options)
        let result = try await fetch(query)
        return result.getOrganizationAnalysis.map {
            transformer.transform($0.fragments.organizationAnalysisFields)
        }
    }

    // MARK: - Input mapping

    /// Builds the generated options input. A concrete resolution is always sent, defaulting to
    /// `.exact` when the caller does not supply one.
    private static func transform(_ input: GetOrganizationAnalysisInput) -> GraphQL.OrganizationAnalysisOptions {
        return GraphQL.OrganizationAnalysisOptions(
            mode: input.mode.map { .some(transform($0)) },
            resolution: .some(transform(input.resolution ?? .exact))
        )
    }

    private static func transform(_ mode: OrganizationAnalysisMode) -> GraphQL.OrganizationAnalysisMode {
        switch mode {
        case .analyze:
            return .analyze
        case .fetch:
            return .fetch
        }
    }

    private static func transform(
        _ resolution: OrganizationAnalysisDomainResolution
    ) -> GraphQL.OrganizationAnalysisDomainResolution {
        switch resolution {
        case .registrable:
            return .registrable
        case .exact:
            return .exact
        }
    }
}
