//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Maps the generated GraphQL `ActionFields` / `AvailableActionFields` fragments into the public
/// `Action` / `AvailableAction` types.
struct ActionEntityTransformer {

    // MARK: - Action

    func transform(_ fields: GraphQL.ActionFields) -> Action {
        Action(
            id: fields.id,
            virtualPresenceId: fields.virtualPresenceId,
            dataHolderId: fields.dataHolderId,
            intent: transform(fields.getActionIntent()),
            additionalInfo: fields.additionalInfo,
            fulfilmentMethod: transform(fields.getActionFulfilmentMethod()),
            status: transform(fields.getActionStatus()),
            assistedPayload: fields.assistedPayload.map { transform($0.fragments.assistedPayloadFields) },
            initiatedAt: fields.initiatedAtEpochMs.map(Self.date(fromEpochMs:)),
            completedAt: fields.completedAtEpochMs.map(Self.date(fromEpochMs:)),
            owner: fields.owner,
            version: fields.version,
            createdAt: Self.date(fromEpochMs: fields.createdAtEpochMs),
            updatedAt: Self.date(fromEpochMs: fields.updatedAtEpochMs)
        )
    }

    // MARK: - AvailableAction

    func transform(_ fields: GraphQL.AvailableActionFields) -> AvailableAction {
        AvailableAction(
            intent: transform(fields.getActionIntent()),
            additionalInfo: fields.additionalInfo,
            fulfilmentMethod: transform(fields.getActionFulfilmentMethod()),
            origin: transform(fields.getActionOrigin()),
            title: fields.title,
            description: fields.description
        )
    }

    // MARK: - Assisted payload

    private func transform(_ payload: GraphQL.AssistedPayloadFields) -> AssistedPayload {
        AssistedPayload(
            toAddress: payload.toAddress,
            unsubscribeUrl: payload.unsubscribeUrl,
            unsubscribeMailto: payload.unsubscribeMailto,
            contact: payload.contact.map { ActionContact(email: $0.email, phone: $0.phone, address: $0.address) },
            jurisdiction: payload.jurisdiction,
            instructions: payload.instructions,
            emailTemplate: payload.emailTemplate.map { AssistedEmailTemplate(subject: $0.subject, body: $0.body) }
        )
    }

    // MARK: - Enum mapping

    private func transform(_ intent: GraphQL.ActionIntent) -> ActionIntent {
        switch intent {
        case .stopContact:
            return .stopContact
        case .accessMyData:
            return .accessMyData
        case .deleteMyData:
            return .deleteMyData
        case .limitDataUse:
            return .limitDataUse
        case .other, .unknown:
            // `OTHER` is the service's catch-all; an unrecognized value also collapses to it.
            return .other
        }
    }

    private func transform(_ method: GraphQL.ActionFulfilmentMethod) -> ActionFulfilmentMethod {
        switch method {
        case .assisted, .unknown:
            // Default to assisted for any value this version of the SDK does not recognize.
            return .assisted
        case .delegated:
            return .delegated
        }
    }

    private func transform(_ origin: GraphQL.ActionOrigin) -> ActionOrigin {
        switch origin {
        case .static:
            return .static
        case .analysis:
            return .analysis
        case .discovery:
            return .discovery
        case .unknown:
            return .unknown
        }
    }

    private func transform(_ status: GraphQL.ActionStatus) -> ActionStatus {
        switch status {
        case .pending:
            return .pending
        case .inProgress:
            return .inProgress
        case .completedUnverified:
            return .completedUnverified
        case .completedVerified:
            return .completedVerified
        case .failed:
            return .failed
        case .requiresUserInput:
            return .requiresUserInput
        case .contradicted:
            return .contradicted
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
