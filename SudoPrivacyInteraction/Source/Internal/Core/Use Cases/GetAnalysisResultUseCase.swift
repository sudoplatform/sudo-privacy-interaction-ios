//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for fetching a single analysis result by its identifier.
class GetAnalysisResultUseCase {

    // MARK: - Properties

    let analysisResultRepository: AnalysisResultRepository

    // MARK: - Lifecycle

    init(analysisResultRepository: AnalysisResultRepository) {
        self.analysisResultRepository = analysisResultRepository
    }

    // MARK: - Methods

    func execute(id: String) async throws -> AnalysisResult? {
        try await analysisResultRepository.get(id: id)
    }
}
