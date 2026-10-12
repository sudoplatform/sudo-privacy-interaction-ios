//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Input for listing the scan summaries captured for a data holder.
public struct ListDataHolderScanSummariesInput: Equatable, Sendable {

    /// Identifier of the data holder whose scan summaries should be listed.
    public let dataHolderId: String

    /// Maximum number of items to return in a single page.
    public let limit: Int?

    /// Token identifying the page of results to return.
    public let nextToken: String?

    public init(dataHolderId: String, limit: Int? = nil, nextToken: String? = nil) {
        self.dataHolderId = dataHolderId
        self.limit = limit
        self.nextToken = nextToken
    }
}
