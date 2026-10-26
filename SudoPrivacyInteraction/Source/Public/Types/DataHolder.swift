//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// The protection state of a data holder.
public enum DataHolderProtectionState: String, Equatable, Sendable {
    case monitored
    case actionRequested
    case resolved
    case archived
    /// A protection state returned by the service that this version of the SDK does not recognize.
    case unknown
}

/// Representation of a data holder discovered in the Sudo Platform Privacy Interaction service.
///
/// A data holder is a third party (for example a company or service) that has been detected as
/// holding some of the user's data, typically discovered by scanning a connected virtual presence.
public struct DataHolder: Equatable, Sendable {

    /// Unique identifier of the data holder.
    public let id: String

    /// Identifier of the virtual presence this data holder is associated with.
    public let virtualPresenceId: String

    /// Domain name of the data holder (e.g. "google.com").
    public let domainName: String

    /// Display name of the data holder (e.g. "Google").
    public let name: String

    /// Current protection state of the data holder.
    public let protectionState: DataHolderProtectionState

    /// Whether there is a compliance concern with this data holder.
    public let complianceConcern: Bool

    /// Time of the most recent interaction with this data holder.
    public let mostRecentInteractionAt: Date

    /// Identifier of the Sudo that owns this data holder.
    public let owner: String

    /// Record version, used for optimistic concurrency.
    public let version: Int

    /// Date the data holder was first discovered.
    public let createdAt: Date

    /// Date the data holder record was last updated.
    public let updatedAt: Date

    public init(
        id: String,
        virtualPresenceId: String,
        domainName: String,
        name: String,
        protectionState: DataHolderProtectionState,
        complianceConcern: Bool,
        mostRecentInteractionAt: Date,
        owner: String,
        version: Int,
        createdAt: Date,
        updatedAt: Date
    ) {
        self.id = id
        self.virtualPresenceId = virtualPresenceId
        self.domainName = domainName
        self.name = name
        self.protectionState = protectionState
        self.complianceConcern = complianceConcern
        self.mostRecentInteractionAt = mostRecentInteractionAt
        self.owner = owner
        self.version = version
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
