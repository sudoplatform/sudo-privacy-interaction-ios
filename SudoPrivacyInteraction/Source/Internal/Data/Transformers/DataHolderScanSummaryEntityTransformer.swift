//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Maps the generated GraphQL `DataHolderScanSummaryFields` fragment into the public
/// `DataHolderScanSummary` type.
struct DataHolderScanSummaryEntityTransformer {

    func transform(_ fields: GraphQL.DataHolderScanSummaryFields) -> DataHolderScanSummary {
        DataHolderScanSummary(
            dataHolderId: fields.dataHolderId,
            owner: fields.owner,
            scannedAt: Self.date(fromEpochMs: fields.scannedAtEpochMs),
            scanRangeFrom: Self.date(fromEpochMs: fields.scanRangeFromEpochMs),
            scanRangeTo: Self.date(fromEpochMs: fields.scanRangeToEpochMs),
            emailCount: fields.emailCount,
            readCount: fields.readCount,
            readRate: fields.readRate,
            marketingEmailCount: fields.marketingEmailCount,
            marketingEmailOpened: fields.marketingEmailOpened,
            marketingOpenRate: fields.marketingOpenRate,
            categoryBreakdown: fields.categoryBreakdown,
            uncategorizedCount: fields.uncategorizedCount
        )
    }

    // MARK: - Helpers

    /// Convert epoch milliseconds (as returned by the service) into a `Date`.
    private static func date(fromEpochMs epochMs: Double) -> Date {
        Date(timeIntervalSince1970: epochMs / 1000)
    }
}
