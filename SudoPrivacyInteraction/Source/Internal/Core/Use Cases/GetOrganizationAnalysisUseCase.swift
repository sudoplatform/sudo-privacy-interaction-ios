//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Core use case for retrieving the shared organization analysis for a domain.
class GetOrganizationAnalysisUseCase {

    // MARK: - Properties

    let organizationAnalysisRepository: OrganizationAnalysisRepository

    // MARK: - Lifecycle

    init(organizationAnalysisRepository: OrganizationAnalysisRepository) {
        self.organizationAnalysisRepository = organizationAnalysisRepository
    }

    // MARK: - Methods

    func execute(input: GetOrganizationAnalysisInput) async throws -> OrganizationAnalysis? {
        try await organizationAnalysisRepository.get(input: input)
    }
}
