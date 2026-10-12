//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Options controlling the scope and limits of a rescan.
public struct ScanOptions: Equatable, Sendable {

    /// Maximum number of items to process during the scan.
    public let maximumItemsProcessed: Int?

    /// Earliest point in time to scan from.
    public let earliestScanDate: Date?

    /// Latest point in time to scan to.
    public let latestScanDate: Date?

    /// Domains to exclude from the scan.
    public let excludeDomains: [String]?

    /// Categories to exclude from the scan.
    public let excludeCategories: [String]?

    public init(
        maximumItemsProcessed: Int? = nil,
        earliestScanDate: Date? = nil,
        latestScanDate: Date? = nil,
        excludeDomains: [String]? = nil,
        excludeCategories: [String]? = nil
    ) {
        self.maximumItemsProcessed = maximumItemsProcessed
        self.earliestScanDate = earliestScanDate
        self.latestScanDate = latestScanDate
        self.excludeDomains = excludeDomains
        self.excludeCategories = excludeCategories
    }
}

/// Input for rescanning an existing virtual presence for new data holders.
///
/// The rescan proceeds from the virtual presence's last scan date forward.
public struct RescanVirtualPresenceInput: Equatable, Sendable {

    /// Identifier of the virtual presence to rescan.
    public let id: String

    /// Options controlling the scope and limits of the rescan.
    public let options: ScanOptions?

    public init(id: String, options: ScanOptions? = nil) {
        self.id = id
        self.options = options
    }
}
