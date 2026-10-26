//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Utility class for generating use cases from the core level of the SDK in the consumer/API level.
class UseCaseFactory: @unchecked Sendable {

    private let virtualPresenceRepository: VirtualPresenceRepository
    private let dataHolderRepository: DataHolderRepository
    private let analysisResultRepository: AnalysisResultRepository
    private let providerConfigurationRepository: ProviderConfigurationRepository
    private let organizationAnalysisRepository: OrganizationAnalysisRepository
    private let actionRepository: ActionRepository

    init(
        virtualPresenceRepository: VirtualPresenceRepository,
        dataHolderRepository: DataHolderRepository,
        analysisResultRepository: AnalysisResultRepository,
        providerConfigurationRepository: ProviderConfigurationRepository,
        organizationAnalysisRepository: OrganizationAnalysisRepository,
        actionRepository: ActionRepository
    ) {
        self.virtualPresenceRepository = virtualPresenceRepository
        self.dataHolderRepository = dataHolderRepository
        self.analysisResultRepository = analysisResultRepository
        self.providerConfigurationRepository = providerConfigurationRepository
        self.organizationAnalysisRepository = organizationAnalysisRepository
        self.actionRepository = actionRepository
    }

    func generateConnectVirtualPresenceUseCase() -> ConnectVirtualPresenceUseCase {
        return ConnectVirtualPresenceUseCase(virtualPresenceRepository: virtualPresenceRepository)
    }

    func generateDisconnectVirtualPresenceUseCase() -> DisconnectVirtualPresenceUseCase {
        return DisconnectVirtualPresenceUseCase(virtualPresenceRepository: virtualPresenceRepository)
    }

    func generateListVirtualPresencesUseCase() -> ListVirtualPresencesUseCase {
        return ListVirtualPresencesUseCase(virtualPresenceRepository: virtualPresenceRepository)
    }

    func generateGetDataHolderUseCase() -> GetDataHolderUseCase {
        return GetDataHolderUseCase(dataHolderRepository: dataHolderRepository)
    }

    func generateListDataHoldersUseCase() -> ListDataHoldersUseCase {
        return ListDataHoldersUseCase(dataHolderRepository: dataHolderRepository)
    }

    func generateListDataHolderScanSummariesUseCase() -> ListDataHolderScanSummariesUseCase {
        return ListDataHolderScanSummariesUseCase(dataHolderRepository: dataHolderRepository)
    }

    func generateArchiveDataHolderUseCase() -> ArchiveDataHolderUseCase {
        return ArchiveDataHolderUseCase(dataHolderRepository: dataHolderRepository)
    }

    func generateUnarchiveDataHolderUseCase() -> UnarchiveDataHolderUseCase {
        return UnarchiveDataHolderUseCase(dataHolderRepository: dataHolderRepository)
    }

    func generateGetAnalysisResultUseCase() -> GetAnalysisResultUseCase {
        return GetAnalysisResultUseCase(analysisResultRepository: analysisResultRepository)
    }

    func generateListAnalysisResultsUseCase() -> ListAnalysisResultsUseCase {
        return ListAnalysisResultsUseCase(analysisResultRepository: analysisResultRepository)
    }

    func generateRescanVirtualPresenceUseCase() -> RescanVirtualPresenceUseCase {
        return RescanVirtualPresenceUseCase(virtualPresenceRepository: virtualPresenceRepository)
    }

    func generateGetProviderConfigurationUseCase() -> GetProviderConfigurationUseCase {
        return GetProviderConfigurationUseCase(providerConfigurationRepository: providerConfigurationRepository)
    }

    func generateGetOrganizationAnalysisUseCase() -> GetOrganizationAnalysisUseCase {
        return GetOrganizationAnalysisUseCase(organizationAnalysisRepository: organizationAnalysisRepository)
    }

    func generateListAvailableActionsUseCase() -> ListAvailableActionsUseCase {
        return ListAvailableActionsUseCase(actionRepository: actionRepository)
    }

    func generateInitiateActionUseCase() -> InitiateActionUseCase {
        return InitiateActionUseCase(actionRepository: actionRepository)
    }

    func generateConfirmActionOutcomeUseCase() -> ConfirmActionOutcomeUseCase {
        return ConfirmActionOutcomeUseCase(actionRepository: actionRepository)
    }

    func generateGetActionUseCase() -> GetActionUseCase {
        return GetActionUseCase(actionRepository: actionRepository)
    }
}
