//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoApiClient
import SudoLogging

/// Default implementation of `DataHolderRepository` backed by the Privacy Interaction GraphQL API.
final class DefaultDataHolderRepository: DataHolderRepository, SudoApiGraphQLExecutor {

    // MARK: - Properties

    let sudoApiClient: SudoApiClient
    let logger: SudoLogging.Logger

    private let transformer = DataHolderEntityTransformer()
    private let scanSummaryTransformer = DataHolderScanSummaryEntityTransformer()

    // MARK: - Lifecycle

    init(sudoApiClient: SudoApiClient, logger: SudoLogging.Logger = .privacyInteractionSDKLogger) {
        self.sudoApiClient = sudoApiClient
        self.logger = logger
    }

    // MARK: - DataHolderRepository

    func get(id: String) async throws -> DataHolder? {
        let query = GraphQL.GetDataHolderQuery(id: id)
        let result = try await fetch(query)
        return result.getDataHolder.map { transformer.transform($0.fragments.dataHolderFields) }
    }

    func list(virtualPresenceId: String, limit: Int?, nextToken: String?) async throws -> ListOutput<DataHolder> {
        let query = GraphQL.ListDataHoldersQuery(
            virtualPresenceId: virtualPresenceId,
            limit: limit,
            nextToken: nextToken
        )
        let result = try await fetch(query)
        let items = result.listDataHolders.items.map {
            transformer.transform($0.fragments.dataHolderFields)
        }
        return ListOutput(items: items, nextToken: result.listDataHolders.nextToken)
    }

    func listScanSummaries(
        dataHolderId: String,
        limit: Int?,
        nextToken: String?
    ) async throws -> ListOutput<DataHolderScanSummary> {
        let query = GraphQL.ListDataHolderScanSummariesQuery(
            dataHolderId: dataHolderId,
            limit: limit,
            nextToken: nextToken
        )
        let result = try await fetch(query)
        let items = result.listDataHolderScanSummaries.items.map {
            scanSummaryTransformer.transform($0.fragments.dataHolderScanSummaryFields)
        }
        return ListOutput(items: items, nextToken: result.listDataHolderScanSummaries.nextToken)
    }

    func archive(id: String) async throws -> DataHolder {
        let mutation = GraphQL.ArchiveDataHolderMutation(id: id)
        let result = try await perform(mutation)
        return transformer.transform(result.archiveDataHolder.fragments.dataHolderFields)
    }

    func unarchive(id: String) async throws -> DataHolder {
        let mutation = GraphQL.UnarchiveDataHolderMutation(id: id)
        let result = try await perform(mutation)
        return transformer.transform(result.unarchiveDataHolder.fragments.dataHolderFields)
    }
}
