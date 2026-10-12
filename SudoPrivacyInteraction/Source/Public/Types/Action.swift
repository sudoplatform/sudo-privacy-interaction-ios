//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// The user-facing intent of an action.
///
/// This taxonomy is deliberately minimal and expected to grow; unrecognized values map to
/// `.unknown` so new intents do not break existing clients.
public enum ActionIntent: String, Equatable, Sendable {
    /// Unsubscribe / opt out of marketing communications.
    case stopContact
    /// Data subject access / portability request.
    case accessMyData
    /// Account deletion / data erasure.
    case deleteMyData
    /// Opt out of sale / tracking, manage consent.
    case limitDataUse
    /// Anything unmapped (also the catch-all for values this version of the SDK does not recognize);
    /// carries `additionalInfo`.
    case other
}

/// How an action is fulfilled from the user's perspective.
public enum ActionFulfilmentMethod: String, Equatable, Sendable {
    /// The service returns structured materials for the client to complete the action.
    case assisted
    /// The service performs the action on the user's behalf.
    case delegated
}

/// Which source contributed an available action.
public enum ActionOrigin: String, Equatable, Sendable {
    /// Always-possible action for the virtual presence type.
    case `static`
    /// Derived from an analysis source's reported actions.
    case analysis
    /// Derived from a discovery scan (e.g. List-Unsubscribe).
    case discovery
    /// An origin returned by the service that this version of the SDK does not recognize.
    case unknown
}

/// Lifecycle status of a persisted action instance.
public enum ActionStatus: String, Equatable, Sendable {
    case pending
    case inProgress
    case completedUnverified
    case completedVerified
    case failed
    case requiresUserInput
    case contradicted
    /// A status returned by the service that this version of the SDK does not recognize.
    case unknown
}

/// Contact materials for an assisted action.
public struct ActionContact: Equatable, Sendable {

    public let email: String?
    public let phone: String?
    public let address: String?

    public init(email: String?, phone: String?, address: String?) {
        self.email = email
        self.phone = phone
        self.address = address
    }
}

/// An email template returned for an assisted action. The body may contain placeholders
/// (e.g. "{{fullName}}") for fields the user supplies client-side.
public struct AssistedEmailTemplate: Equatable, Sendable {

    public let subject: String?
    public let body: String

    public init(subject: String?, body: String) {
        self.subject = subject
        self.body = body
    }
}

/// Materials for an assisted action: an email template, free-text instructions, or a link.
///
/// The service supplies the organization contact points and any source-provided instructions, but
/// never the user's own data.
public struct AssistedPayload: Equatable, Sendable {

    public let toAddress: String?
    public let unsubscribeUrl: String?
    public let unsubscribeMailto: String?
    public let contact: ActionContact?
    public let jurisdiction: String?

    /// Free-text instructions, potentially provided verbatim by an analysis source.
    public let instructions: String?

    /// An email template for the action. The body may contain placeholders for user-supplied fields.
    public let emailTemplate: AssistedEmailTemplate?

    public init(
        toAddress: String?,
        unsubscribeUrl: String?,
        unsubscribeMailto: String?,
        contact: ActionContact?,
        jurisdiction: String?,
        instructions: String?,
        emailTemplate: AssistedEmailTemplate?
    ) {
        self.toAddress = toAddress
        self.unsubscribeUrl = unsubscribeUrl
        self.unsubscribeMailto = unsubscribeMailto
        self.contact = contact
        self.jurisdiction = jurisdiction
        self.instructions = instructions
        self.emailTemplate = emailTemplate
    }
}

/// A derived, non-persisted action the user could take against a data holder.
public struct AvailableAction: Equatable, Sendable {

    public let intent: ActionIntent

    /// Populated when `intent` is `.other`.
    public let additionalInfo: String?

    public let fulfilmentMethod: ActionFulfilmentMethod
    public let origin: ActionOrigin

    /// Short presentation hint for the action's title.
    public let title: String?

    /// Short presentation hint describing the action.
    public let description: String?

    public init(
        intent: ActionIntent,
        additionalInfo: String?,
        fulfilmentMethod: ActionFulfilmentMethod,
        origin: ActionOrigin,
        title: String?,
        description: String?
    ) {
        self.intent = intent
        self.additionalInfo = additionalInfo
        self.fulfilmentMethod = fulfilmentMethod
        self.origin = origin
        self.title = title
        self.description = description
    }
}

/// A persisted, initiated action instance scoped to a data holder relationship.
public struct Action: Equatable, Sendable {

    public let id: String
    public let virtualPresenceId: String
    public let dataHolderId: String?
    public let intent: ActionIntent

    /// Populated when `intent` is `.other`.
    public let additionalInfo: String?

    public let fulfilmentMethod: ActionFulfilmentMethod
    public let status: ActionStatus

    /// Materials for an assisted action. `nil` for a delegated action.
    public let assistedPayload: AssistedPayload?

    /// Time the action was initiated.
    public let initiatedAt: Date?

    /// Time the action completed.
    public let completedAt: Date?

    public let owner: String
    public let version: Int
    public let createdAt: Date
    public let updatedAt: Date

    public init(
        id: String,
        virtualPresenceId: String,
        dataHolderId: String?,
        intent: ActionIntent,
        additionalInfo: String?,
        fulfilmentMethod: ActionFulfilmentMethod,
        status: ActionStatus,
        assistedPayload: AssistedPayload?,
        initiatedAt: Date?,
        completedAt: Date?,
        owner: String,
        version: Int,
        createdAt: Date,
        updatedAt: Date
    ) {
        self.id = id
        self.virtualPresenceId = virtualPresenceId
        self.dataHolderId = dataHolderId
        self.intent = intent
        self.additionalInfo = additionalInfo
        self.fulfilmentMethod = fulfilmentMethod
        self.status = status
        self.assistedPayload = assistedPayload
        self.initiatedAt = initiatedAt
        self.completedAt = completedAt
        self.owner = owner
        self.version = version
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
