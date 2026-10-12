//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Connection state of a virtual presence.
public enum VirtualPresenceState: String, Equatable, Sendable {
    case connected
    case scanning
    case needsReauth
    case error
    case inactive
    /// A state returned by the service that this version of the SDK does not recognize.
    case unknown
}

/// The type of provider backing a virtual presence.
public enum ProviderType: String, Equatable, Sendable {
    case email
    /// A provider type returned by the service that this version of the SDK does not recognize.
    case unknown
}

/// The relationship provider used for discovery on a virtual presence.
public enum RelationshipProvider: String, Equatable, Sendable {
    case gmailProvider
    case testProvider
}

/// Representation of a virtual presence in the Sudo Platform Privacy Interaction service.
///
/// A virtual presence represents a connection to a third-party provider (for example an email
/// account) through which data holders can be discovered on behalf of a Sudo.
public struct VirtualPresence: Equatable, Sendable {

    /// Unique identifier of the virtual presence.
    public let id: String

    /// Identifier of the Sudo that owns this virtual presence.
    public let owner: String

    /// The type of presence (e.g. email, social).
    public let providerType: ProviderType

    /// The presence identifier (e.g. the email address).
    public let identifier: String

    /// Current connection state of the virtual presence.
    public let state: VirtualPresenceState

    /// Which relationship provider to use for discovery, if any.
    public let relationshipProvider: RelationshipProvider?

    /// Time of the most recent scan.
    public let lastScannedAt: Date

    /// Record version, used for optimistic concurrency.
    public let version: Int

    /// Date the virtual presence was created.
    public let createdAt: Date

    /// Date the virtual presence was last updated.
    public let updatedAt: Date

    public init(
        id: String,
        owner: String,
        providerType: ProviderType,
        identifier: String,
        state: VirtualPresenceState,
        relationshipProvider: RelationshipProvider?,
        lastScannedAt: Date,
        version: Int,
        createdAt: Date,
        updatedAt: Date
    ) {
        self.id = id
        self.owner = owner
        self.providerType = providerType
        self.identifier = identifier
        self.state = state
        self.relationshipProvider = relationshipProvider
        self.lastScannedAt = lastScannedAt
        self.version = version
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
