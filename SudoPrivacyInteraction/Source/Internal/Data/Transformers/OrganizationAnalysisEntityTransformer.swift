//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Maps the generated GraphQL `OrganizationAnalysisFields` fragment into the public
/// `OrganizationAnalysis` type.
///
/// The structured `data` payload and `status` reuse the shared `AnalysisResultData`/
/// `AnalysisResultStatus` mapping, so this transformer delegates to `AnalysisResultEntityTransformer`
/// rather than duplicating that logic.
struct OrganizationAnalysisEntityTransformer {

    private let analysisResultTransformer = AnalysisResultEntityTransformer()

    func transform(_ fields: GraphQL.OrganizationAnalysisFields) -> OrganizationAnalysis {
        OrganizationAnalysis(
            id: fields.id,
            domain: fields.domain,
            status: analysisResultTransformer.transform(fields.getAnalysisResultStatus()),
            lastAnalyzedAt: Self.date(fromEpochMs: fields.lastAnalyzedAtEpochMs),
            data: fields.data.map { analysisResultTransformer.transform($0.fragments.analysisResultDataFields) },
            owner: fields.owner,
            version: fields.version,
            createdAt: Self.date(fromEpochMs: fields.createdAtEpochMs),
            updatedAt: Self.date(fromEpochMs: fields.updatedAtEpochMs)
        )
    }

    // MARK: - Helpers

    /// Convert epoch milliseconds (as returned by the service) into a `Date`.
    private static func date(fromEpochMs epochMs: Double) -> Date {
        Date(timeIntervalSince1970: epochMs / 1000)
    }
}
