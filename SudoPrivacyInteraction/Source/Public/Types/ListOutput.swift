//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// A paginated list of items returned from a list operation.
public struct ListOutput<Item: Sendable>: Sendable {

    /// The items returned for the current page.
    public let items: [Item]

    /// Token used to fetch the next page of results, or `nil` if there are no more results.
    public let nextToken: String?

    public init(items: [Item], nextToken: String?) {
        self.items = items
        self.nextToken = nextToken
    }
}
