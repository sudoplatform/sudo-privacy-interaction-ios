//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Repository responsible for accessing data holders discovered for a virtual presence.
///
/// Concrete implementations live under `Source/Internal/Data/Repositories`.
protocol DataHolderRepository: AnyObject {

    /// Get a single data holder by its identifier.
    func get(id: String) async throws -> DataHolder?

    /// List the data holders discovered for a virtual presence.
    func list(virtualPresenceId: String, limit: Int?, nextToken: String?) async throws -> ListOutput<DataHolder>

    /// List the scan summaries captured for a data holder, most recent first.
    func listScanSummaries(
        dataHolderId: String,
        limit: Int?,
        nextToken: String?
    ) async throws -> ListOutput<DataHolderScanSummary>

    /// Archive a data holder, removing it from the user's active list.
    func archive(id: String) async throws -> DataHolder

    /// Unarchive a previously archived data holder, returning it to the monitored state.
    func unarchive(id: String) async throws -> DataHolder
}
