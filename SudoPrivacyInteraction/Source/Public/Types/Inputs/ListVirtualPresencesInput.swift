//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Input for listing virtual presences.
public struct ListVirtualPresencesInput: Equatable, Sendable {

    /// Maximum number of items to return in a single page.
    public let limit: Int?

    /// Token identifying the page of results to return.
    public let nextToken: String?

    public init(limit: Int? = nil, nextToken: String? = nil) {
        self.limit = limit
        self.nextToken = nextToken
    }
}
