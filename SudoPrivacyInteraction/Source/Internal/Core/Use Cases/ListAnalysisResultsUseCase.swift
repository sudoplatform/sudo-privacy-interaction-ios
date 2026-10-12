//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for listing the analysis results for a virtual presence.
class ListAnalysisResultsUseCase {

    // MARK: - Properties

    let analysisResultRepository: AnalysisResultRepository

    // MARK: - Lifecycle

    init(analysisResultRepository: AnalysisResultRepository) {
        self.analysisResultRepository = analysisResultRepository
    }

    // MARK: - Methods

    func execute(input: ListAnalysisResultsInput) async throws -> ListOutput<AnalysisResult> {
        try await analysisResultRepository.list(
            virtualPresenceId: input.virtualPresenceId,
            limit: input.limit,
            nextToken: input.nextToken
        )
    }
}
