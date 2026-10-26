//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Maps the generated GraphQL `DataHoldersUpdateFields` subscription payload into the public
/// `[DataHolder]` batch delivered to subscribers.
struct DataHoldersUpdateEntityTransformer {

    func transform(_ fields: GraphQL.DataHoldersUpdateFields) -> [DataHolder] {
        fields.items.map { transform($0.fragments.dataHolderUpdateItemFields) }
    }

    // MARK: - Item mapping

    private func transform(_ item: GraphQL.DataHolderUpdateItemFields) -> DataHolder {
        DataHolder(
            id: item.id,
            virtualPresenceId: item.virtualPresenceId,
            domainName: item.domainName,
            name: item.name,
            protectionState: transform(item.getDataHolderProtectionState()),
            complianceConcern: item.complianceConcern,
            mostRecentInteractionAt: Self.date(fromEpochMs: item.mostRecentInteractionEpochMs),
            owner: item.owner,
            version: item.version,
            createdAt: Self.date(fromEpochMs: item.createdAtEpochMs),
            updatedAt: Self.date(fromEpochMs: item.updatedAtEpochMs)
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
        case .archived:
            return .archived
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
