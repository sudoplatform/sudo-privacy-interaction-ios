//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Input for the `getOrganizationAnalysis` query.
public struct GetOrganizationAnalysisInput: Equatable, Sendable {

    /// The domain to analyze (e.g. "example.com").
    public let domain: String

    /// How source results are obtained when the stored analysis is stale or absent.
    /// Defaults to `.analyze` on the service when omitted.
    public let mode: OrganizationAnalysisMode?

    /// How the requested domain is treated before analysis. Defaults to `.registrable` on the
    /// service when omitted.
    public let resolution: OrganizationAnalysisDomainResolution?

    public init(
        domain: String,
        mode: OrganizationAnalysisMode? = nil,
        resolution: OrganizationAnalysisDomainResolution? = nil
    ) {
        self.domain = domain
        self.mode = mode
        self.resolution = resolution
    }
}
