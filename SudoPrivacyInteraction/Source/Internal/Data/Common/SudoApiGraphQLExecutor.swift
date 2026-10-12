//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoApiClient

/// Provides generic helpers to execute GraphQL operations through a `SudoApiClient`.
///
/// Types conforming to this protocol get `fetch` (queries) and `perform`
/// (mutations) for free, with a single place where API errors are translated
/// into `SudoPrivacyInteractionError`.
protocol SudoApiGraphQLExecutor: AnyObject {

    /// Client used to make GraphQL requests to the Privacy Interaction service.
    var sudoApiClient: SudoApiClient { get }

    /// Execute a GraphQL mutation.
    func perform<Mutation: GraphQLMutation>(_ mutation: Mutation) async throws -> Mutation.Data

    /// Execute a GraphQL query.
    func fetch<Query: GraphQLQuery>(_ query: Query) async throws -> Query.Data
}

extension SudoApiGraphQLExecutor {

    func perform<Mutation: GraphQLMutation>(_ mutation: Mutation) async throws -> Mutation.Data {
        do {
            return try await sudoApiClient.perform(mutation: mutation)
        } catch {
            throw SudoPrivacyInteractionError.fromApiOperationError(error)
        }
    }

    func fetch<Query: GraphQLQuery>(_ query: Query) async throws -> Query.Data {
        do {
            return try await sudoApiClient.fetch(query: query)
        } catch {
            throw SudoPrivacyInteractionError.fromApiOperationError(error)
        }
    }
}
