//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Email interaction metrics captured during a single scan for a specific data holder.
///
/// A scan summary aggregates the emails observed from a data holder within a single scan's date
/// range, along with read and marketing engagement rates and a per-category breakdown.
public struct DataHolderScanSummary: Equatable, Sendable {

    /// Identifier of the data holder these metrics were captured for.
    public let dataHolderId: String

    /// Identifier of the Sudo that owns this scan summary.
    public let owner: String

    /// Time the scan that produced this summary was performed.
    public let scannedAt: Date

    /// Start of the date range covered by the scan.
    public let scanRangeFrom: Date

    /// End of the date range covered by the scan.
    public let scanRangeTo: Date

    /// Total number of emails observed from the data holder during the scan.
    public let emailCount: Int

    /// Number of observed emails that had been read.
    public let readCount: Int

    /// Proportion of observed emails that had been read (0...1).
    public let readRate: Double

    /// Number of observed emails classified as marketing.
    public let marketingEmailCount: Int

    /// Number of marketing emails that were opened.
    public let marketingEmailOpened: Int

    /// Proportion of marketing emails that were opened (0...1).
    public let marketingOpenRate: Double

    /// Per-category breakdown of the observed emails, keyed by category, as a JSON string.
    public let categoryBreakdown: String

    /// Number of observed emails that could not be categorized.
    public let uncategorizedCount: Int

    public init(
        dataHolderId: String,
        owner: String,
        scannedAt: Date,
        scanRangeFrom: Date,
        scanRangeTo: Date,
        emailCount: Int,
        readCount: Int,
        readRate: Double,
        marketingEmailCount: Int,
        marketingEmailOpened: Int,
        marketingOpenRate: Double,
        categoryBreakdown: String,
        uncategorizedCount: Int
    ) {
        self.dataHolderId = dataHolderId
        self.owner = owner
        self.scannedAt = scannedAt
        self.scanRangeFrom = scanRangeFrom
        self.scanRangeTo = scanRangeTo
        self.emailCount = emailCount
        self.readCount = readCount
        self.readRate = readRate
        self.marketingEmailCount = marketingEmailCount
        self.marketingEmailOpened = marketingEmailOpened
        self.marketingOpenRate = marketingOpenRate
        self.categoryBreakdown = categoryBreakdown
        self.uncategorizedCount = uncategorizedCount
    }
}
