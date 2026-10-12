//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Input for listing the analysis results for a virtual presence.
public struct ListAnalysisResultsInput: Equatable, Sendable {

    /// Identifier of the virtual presence whose analysis results should be listed.
    public let virtualPresenceId: String

    /// Maximum number of items to return in a single page.
    public let limit: Int?

    /// Token identifying the page of results to return.
    public let nextToken: String?

    public init(virtualPresenceId: String, limit: Int? = nil, nextToken: String? = nil) {
        self.virtualPresenceId = virtualPresenceId
        self.limit = limit
        self.nextToken = nextToken
    }
}
