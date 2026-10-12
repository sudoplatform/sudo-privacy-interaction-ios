//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Repository responsible for accessing analysis results for a virtual presence.
///
/// Concrete implementations live under `Source/Internal/Data/Repositories`.
protocol AnalysisResultRepository: AnyObject {

    /// Get a single analysis result by its identifier, including its typed data.
    func get(id: String) async throws -> AnalysisResult?

    /// List the analysis results for a virtual presence.
    func list(virtualPresenceId: String, limit: Int?, nextToken: String?) async throws -> ListOutput<AnalysisResult>
}
