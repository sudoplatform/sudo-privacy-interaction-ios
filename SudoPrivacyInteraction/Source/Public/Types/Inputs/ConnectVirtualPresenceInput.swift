//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Input for connecting a virtual presence with an OAuth authorization code obtained from the
/// provider consent flow.
public struct ConnectVirtualPresenceWithAuthCodeInput: Equatable, Sendable {

    /// OAuth authorization code obtained from the provider consent flow.
    public let authCode: String

    /// The redirect URI used in the consent flow, if applicable.
    public let redirectUri: String?

    /// Which relationship provider to use for discovery.
    public let relationshipProvider: RelationshipProvider?

    public init(
        authCode: String,
        redirectUri: String? = nil,
        relationshipProvider: RelationshipProvider? = nil
    ) {
        self.authCode = authCode
        self.redirectUri = redirectUri
        self.relationshipProvider = relationshipProvider
    }
}

/// Input for connecting a virtual presence with a pre-obtained OAuth refresh token.
public struct ConnectVirtualPresenceWithRefreshTokenInput: Equatable, Sendable {

    /// The OAuth refresh token.
    public let refreshToken: String

    /// The provider identity (e.g. the email address) the token belongs to.
    public let providerIdentity: String

    /// OAuth scopes granted to the token, if known.
    public let scopes: [String]?

    /// Expiry of the token, if known.
    public let expiresAt: Date?

    /// Which relationship provider to use for discovery.
    public let relationshipProvider: RelationshipProvider?

    public init(
        refreshToken: String,
        providerIdentity: String,
        scopes: [String]? = nil,
        expiresAt: Date? = nil,
        relationshipProvider: RelationshipProvider? = nil
    ) {
        self.refreshToken = refreshToken
        self.providerIdentity = providerIdentity
        self.scopes = scopes
        self.expiresAt = expiresAt
        self.relationshipProvider = relationshipProvider
    }
}
