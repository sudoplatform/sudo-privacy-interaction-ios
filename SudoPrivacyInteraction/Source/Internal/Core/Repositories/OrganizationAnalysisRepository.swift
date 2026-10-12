//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Repository responsible for accessing organization-level privacy analysis.
///
/// Concrete implementations live under `Source/Internal/Data/Repositories`.
protocol OrganizationAnalysisRepository: AnyObject {

    /// Analyze (read-through) and return the shared, organization-generic analysis for a domain.
    func get(input: GetOrganizationAnalysisInput) async throws -> OrganizationAnalysis?
}
