//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoApiClient
import SudoLogging

/// Default implementation of `VirtualPresenceRepository` backed by the Privacy Interaction GraphQL API.
final class DefaultVirtualPresenceRepository: VirtualPresenceRepository, SudoApiGraphQLExecutor {

    // MARK: - Properties

    let sudoApiClient: SudoApiClient
    let logger: SudoLogging.Logger

    private let transformer = VirtualPresenceEntityTransformer()

    // MARK: - Lifecycle

    init(sudoApiClient: SudoApiClient, logger: SudoLogging.Logger = .privacyInteractionSDKLogger) {
        self.sudoApiClient = sudoApiClient
        self.logger = logger
    }

    // MARK: - VirtualPresenceRepository

    func connect(withAuthCode input: ConnectVirtualPresenceWithAuthCodeInput) async throws -> VirtualPresence {
        let mutationInput = GraphQL.ConnectVirtualPresenceInput(
            authCode: .some(Self.transform(input)),
            relationshipProvider: input.relationshipProvider.map { .some(Self.transform($0)) }
        )
        return try await connect(with: mutationInput)
    }

    func connect(withRefreshToken input: ConnectVirtualPresenceWithRefreshTokenInput) async throws -> VirtualPresence {
        let mutationInput = GraphQL.ConnectVirtualPresenceInput(
            refreshToken: .some(Self.transform(input)),
            relationshipProvider: input.relationshipProvider.map { .some(Self.transform($0)) }
        )
        return try await connect(with: mutationInput)
    }

    private func connect(with input: GraphQL.ConnectVirtualPresenceInput) async throws -> VirtualPresence {
        let mutation = GraphQL.ConnectVirtualPresenceMutation(input: input)
        let result = try await perform(mutation)
        return transformer.transform(result.connectVirtualPresence.fragments.virtualPresenceFields)
    }

    func disconnect(id: String) async throws -> VirtualPresence {
        let mutation = GraphQL.DisconnectVirtualPresenceMutation(id: id)
        let result = try await perform(mutation)
        return transformer.transform(result.disconnectVirtualPresence.fragments.virtualPresenceFields)
    }

    func rescan(input: RescanVirtualPresenceInput) async throws -> VirtualPresence {
        let options = input.options.map { Self.transform($0) }
        let mutation = GraphQL.RescanVirtualPresenceMutation(id: input.id, options: options)
        let result = try await perform(mutation)
        return transformer.transform(result.rescanVirtualPresence.fragments.virtualPresenceFields)
    }

    func list(limit: Int?, nextToken: String?) async throws -> ListOutput<VirtualPresence> {
        let queryInput = GraphQL.ListVirtualPresencesInput(
            limit: limit.map { .some($0) },
            nextToken: nextToken.map { .some($0) }
        )
        let query = GraphQL.ListVirtualPresencesQuery(input: queryInput)
        let result = try await fetch(query)
        let items = result.listVirtualPresences.items.map {
            transformer.transform($0.fragments.virtualPresenceFields)
        }
        return ListOutput(items: items, nextToken: result.listVirtualPresences.nextToken)
    }

    // MARK: - Input mapping

    private static func transform(_ input: ConnectVirtualPresenceWithAuthCodeInput) -> GraphQL.AuthCodeInput {
        GraphQL.AuthCodeInput(
            authCode: input.authCode,
            redirectUri: input.redirectUri.map { .some($0) }
        )
    }

    private static func transform(_ input: ConnectVirtualPresenceWithRefreshTokenInput) -> GraphQL.RefreshTokenInput {
        GraphQL.RefreshTokenInput(
            expiresInEpochMs: input.expiresAt.map { .some($0.timeIntervalSince1970 * 1000) },
            providerIdentity: input.providerIdentity,
            refreshToken: input.refreshToken,
            scopes: input.scopes.map { .some($0) }
        )
    }

    private static func transform(_ provider: RelationshipProvider) -> GraphQL.RelationshipProvider {
        switch provider {
        case .gmailProvider:
            return .gmailProvider
        case .testProvider:
            return .testProvider
        }
    }

    private static func transform(_ options: ScanOptions) -> GraphQL.ScanOptionsInput {
        GraphQL.ScanOptionsInput(
            earliestScanDate: options.earliestScanDate.map { .some(Self.isoDateFormatter.string(from: $0)) },
            excludeCategories: options.excludeCategories.map { .some($0) },
            excludeDomains: options.excludeDomains.map { .some($0) },
            latestScanDate: options.latestScanDate.map { .some(Self.isoDateFormatter.string(from: $0)) },
            maximumItemsProcessed: options.maximumItemsProcessed.map { .some($0) }
        )
    }

    /// Formatter used to serialize scan option dates as ISO 8601 timestamps, matching the service.
    private static let isoDateFormatter = ISO8601DateFormatter()
}
