//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Controls how `getOrganizationAnalysis` obtains source results when the stored analysis is stale
/// or absent.
public enum OrganizationAnalysisMode: String, Equatable, Sendable {
    /// Read-through: request analysis from the sources, which may compute and leave the result
    /// pending until asynchronous work completes.
    case analyze
    /// Pull only the sources' existing values; never request new work.
    case fetch
}

/// Controls how `getOrganizationAnalysis` treats the requested domain before sources query their
/// backing services.
public enum OrganizationAnalysisDomainResolution: String, Equatable, Sendable {
    /// Reduce the domain to its registrable (eTLD+1) form before analysis. This is the default.
    case registrable
    /// Analyze the domain verbatim, without reducing it to a registrable domain.
    case exact
}

/// Shared, domain-keyed privacy analysis of an organization.
///
/// The same underlying analysis is returned to every caller asking about the same domain; it
/// carries only organization-generic signals. `id` equals the analyzed domain.
public struct OrganizationAnalysis: Equatable, Sendable {

    /// Identifies the shared analysis. Equal to the analyzed domain.
    public let id: String

    /// The analyzed domain (equal to `id`).
    public let domain: String

    /// Aggregate status. `.pending` while an asynchronous source is still resolving.
    public let status: AnalysisResultStatus

    /// Time the aggregate was last derived.
    public let lastAnalyzedAt: Date

    /// Structured analysis payload. Populated when `status` is `.complete` or `.partial`.
    public let data: AnalysisResultData?

    /// The caller who requested this view. The underlying analysis is shared.
    public let owner: String

    /// Record version, used for optimistic concurrency.
    public let version: Int

    /// Date the analysis was created.
    public let createdAt: Date

    /// Date the analysis was last updated.
    public let updatedAt: Date

    public init(
        id: String,
        domain: String,
        status: AnalysisResultStatus,
        lastAnalyzedAt: Date,
        data: AnalysisResultData?,
        owner: String,
        version: Int,
        createdAt: Date,
        updatedAt: Date
    ) {
        self.id = id
        self.domain = domain
        self.status = status
        self.lastAnalyzedAt = lastAnalyzedAt
        self.data = data
        self.owner = owner
        self.version = version
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
