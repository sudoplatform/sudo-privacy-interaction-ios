//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Maps the generated GraphQL `VirtualPresenceFields` fragment into the public
/// `VirtualPresence` type.
struct VirtualPresenceEntityTransformer {

    func transform(_ fields: GraphQL.VirtualPresenceFields) -> VirtualPresence {
        VirtualPresence(
            id: fields.id,
            owner: fields.owner,
            providerType: transform(fields.getProviderType()),
            identifier: fields.identifier,
            state: transform(fields.getVirtualPresenceState()),
            relationshipProvider: fields.getRelationshipProvider().flatMap(transform(_:)),
            dataHolderCount: transform(fields.dataHolderCount),
            lastScannedAt: Self.date(fromEpochMs: fields.lastScannedAtEpochMs),
            version: fields.version,
            createdAt: Self.date(fromEpochMs: fields.createdAtEpochMs),
            updatedAt: Self.date(fromEpochMs: fields.updatedAtEpochMs)
        )
    }

    // MARK: - Enum mapping

    private func transform(_ count: GraphQL.VirtualPresenceFields.DataHolderCount) -> DataHolderCount {
        DataHolderCount(
            count: count.count,
            monitored: count.monitored,
            initiatedActions: count.initiatedActions,
            completedActions: count.completedActions,
            archived: count.archived
        )
    }

    private func transform(_ providerType: GraphQL.ProviderType) -> ProviderType {
        switch providerType {
        case .email:
            return .email
        case .unknown:
            return .unknown
        }
    }

    private func transform(_ state: GraphQL.VirtualPresenceState) -> VirtualPresenceState {
        switch state {
        case .connected:
            return .connected
        case .scanning:
            return .scanning
        case .needsReauth:
            return .needsReauth
        case .error:
            return .error
        case .inactive:
            return .inactive
        case .unknown:
            return .unknown
        }
    }

    private func transform(_ provider: GraphQL.RelationshipProvider) -> RelationshipProvider? {
        switch provider {
        case .gmailProvider:
            return .gmailProvider
        case .testProvider:
            return .testProvider
        case .unknown:
            return nil
        }
    }

    // MARK: - Helpers

    /// Convert epoch milliseconds (as returned by the service) into a `Date`.
    private static func date(fromEpochMs epochMs: Double) -> Date {
        Date(timeIntervalSince1970: epochMs / 1000)
    }
}
