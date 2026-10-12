//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Maps the generated GraphQL `DataHolderFields` fragment into the public `DataHolder` type.
struct DataHolderEntityTransformer {

    func transform(_ fields: GraphQL.DataHolderFields) -> DataHolder {
        DataHolder(
            id: fields.id,
            virtualPresenceId: fields.virtualPresenceId,
            domainName: fields.domainName,
            name: fields.name,
            protectionState: transform(fields.getDataHolderProtectionState()),
            complianceConcern: fields.complianceConcern,
            mostRecentInteractionAt: Self.date(fromEpochMs: fields.mostRecentInteractionEpochMs),
            owner: fields.owner,
            version: fields.version,
            createdAt: Self.date(fromEpochMs: fields.createdAtEpochMs),
            updatedAt: Self.date(fromEpochMs: fields.updatedAtEpochMs)
        )
    }

    // MARK: - Enum mapping

    private func transform(_ state: GraphQL.DataHolderProtectionState) -> DataHolderProtectionState {
        switch state {
        case .monitored:
            return .monitored
        case .actionRequested:
            return .actionRequested
        case .resolved:
            return .resolved
        case .unknown:
            return .unknown
        }
    }

    // MARK: - Helpers

    /// Convert epoch milliseconds (as returned by the service) into a `Date`.
    private static func date(fromEpochMs epochMs: Double) -> Date {
        Date(timeIntervalSince1970: epochMs / 1000)
    }
}
