//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Maps the generated GraphQL `AnalysisResultUpdateFields` fragment into the public
/// `AnalysisResultUpdate` type.
struct AnalysisResultUpdateEntityTransformer {

    func transform(_ fields: GraphQL.AnalysisResultUpdateFields) -> AnalysisResultUpdate {
        AnalysisResultUpdate(
            id: fields.id,
            virtualPresenceId: fields.virtualPresenceId,
            dataHolderIdentifier: fields.dataHolderIdentifier,
            status: transform(fields.getAnalysisResultStatus()),
            lastAnalyzedAt: Self.date(fromEpochMs: fields.lastAnalyzedAtEpochMs),
            owner: fields.owner,
            version: fields.version,
            createdAt: Self.date(fromEpochMs: fields.createdAtEpochMs),
            updatedAt: Self.date(fromEpochMs: fields.updatedAtEpochMs)
        )
    }

    // MARK: - Enum mapping

    private func transform(_ status: GraphQL.AnalysisResultStatus) -> AnalysisResultStatus {
        switch status {
        case .pending:
            return .pending
        case .complete:
            return .complete
        case .partial:
            return .partial
        case .failed:
            return .failed
        case .unavailable:
            return .unavailable
        case .unknown:
            return .unknown
        }
    }

    // MARK: - Helpers

    /// Convert epoch milliseconds (as returned by the service) into a `Date`.
    private static func date(fromEpochMs epochMs: Double) -> Date {
        Date(timeIntervalSince1970: epochMs / 1000)
    }
}
