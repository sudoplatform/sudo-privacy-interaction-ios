//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Lightweight notification payload delivered when an analysis result is created or updated.
///
/// This does not include the full analysis `data`. Use `getAnalysisResult` to fetch the
/// complete typed data for the referenced analysis result.
public struct AnalysisResultUpdate: Equatable, Sendable {

    /// Unique identifier of the analysis result.
    public let id: String

    /// Identifier of the virtual presence this analysis is associated with.
    public let virtualPresenceId: String

    /// Identifier of the data holder that was analyzed.
    public let dataHolderIdentifier: String

    /// Aggregate status of the analysis.
    public let status: AnalysisResultStatus

    /// Time the aggregate was last derived.
    public let lastAnalyzedAt: Date

    /// Identifier of the Sudo that owns this analysis result.
    public let owner: String

    /// Record version, used for optimistic concurrency.
    public let version: Int

    /// Date the analysis result was created.
    public let createdAt: Date

    /// Date the analysis result was last updated.
    public let updatedAt: Date

    public init(
        id: String,
        virtualPresenceId: String,
        dataHolderIdentifier: String,
        status: AnalysisResultStatus,
        lastAnalyzedAt: Date,
        owner: String,
        version: Int,
        createdAt: Date,
        updatedAt: Date
    ) {
        self.id = id
        self.virtualPresenceId = virtualPresenceId
        self.dataHolderIdentifier = dataHolderIdentifier
        self.status = status
        self.lastAnalyzedAt = lastAnalyzedAt
        self.owner = owner
        self.version = version
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
