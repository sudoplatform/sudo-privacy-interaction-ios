//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoApiClient
import SudoLogging

/// Default implementation of `AnalysisResultRepository` backed by the Privacy Interaction GraphQL API.
final class DefaultAnalysisResultRepository: AnalysisResultRepository, SudoApiGraphQLExecutor {

    // MARK: - Properties

    let sudoApiClient: SudoApiClient
    let logger: SudoLogging.Logger

    private let transformer = AnalysisResultEntityTransformer()

    // MARK: - Lifecycle

    init(sudoApiClient: SudoApiClient, logger: SudoLogging.Logger = .privacyInteractionSDKLogger) {
        self.sudoApiClient = sudoApiClient
        self.logger = logger
    }

    // MARK: - AnalysisResultRepository

    func get(id: String) async throws -> AnalysisResult? {
        let query = GraphQL.GetAnalysisResultQuery(id: id)
        let result = try await fetch(query)
        return result.getAnalysisResult.map { transformer.transform($0.fragments.analysisResultFields) }
    }

    func list(virtualPresenceId: String, limit: Int?, nextToken: String?) async throws -> ListOutput<AnalysisResult> {
        let query = GraphQL.ListAnalysisResultsQuery(
            virtualPresenceId: virtualPresenceId,
            limit: limit,
            nextToken: nextToken
        )
        let result = try await fetch(query)
        let items = result.listAnalysisResults.items.map {
            transformer.transform($0.fragments.analysisResultFields)
        }
        return ListOutput(items: items, nextToken: result.listAnalysisResults.nextToken)
    }
}
