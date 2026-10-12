//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Maps the generated GraphQL `AnalysisResultFields` fragment into the public `AnalysisResult` type.
struct AnalysisResultEntityTransformer {

    func transform(_ fields: GraphQL.AnalysisResultFields) -> AnalysisResult {
        AnalysisResult(
            id: fields.id,
            virtualPresenceId: fields.virtualPresenceId,
            dataHolderIdentifier: fields.dataHolderIdentifier,
            status: transform(fields.getAnalysisResultStatus()),
            lastAnalyzedAt: Self.date(fromEpochMs: fields.lastAnalyzedAtEpochMs),
            data: fields.data.map { transform($0.fragments.analysisResultDataFields) },
            owner: fields.owner,
            version: fields.version,
            createdAt: Self.date(fromEpochMs: fields.createdAtEpochMs),
            updatedAt: Self.date(fromEpochMs: fields.updatedAtEpochMs)
        )
    }

    // MARK: - Data payload

    /// Maps the shared `AnalysisResultDataFields` fragment.
    func transform(_ data: GraphQL.AnalysisResultDataFields) -> AnalysisResultData {
        AnalysisResultData(
            privacyScore: data.privacyScore.map(transform(_:)),
            privacySummary: transform(data.privacySummary),
            categories: data.categories.map(transform(_:)),
            capabilities: transform(data.capabilities),
            riskIndicators: transform(data.riskIndicators),
            organizationIdentity: data.organizationIdentity.map(transform(_:)),
            attribution: data.attribution
        )
    }

    private func transform(_ score: GraphQL.AnalysisResultDataFields.PrivacyScore) -> PrivacyScore {
        PrivacyScore(
            score: score.score,
            breakdown: score.breakdown.map { ScoreContribution(aspect: $0.aspect, contribution: $0.contribution) },
            coverage: ScoreCoverage(evaluated: score.coverage.evaluated, total: score.coverage.total)
        )
    }

    private func transform(_ summary: GraphQL.AnalysisResultDataFields.PrivacySummary) -> PrivacySummary {
        PrivacySummary(
            bulletPoints: summary.bulletPoints,
            sourceUrl: summary.sourceUrl,
            sourceLastUpdated: summary.sourceLastUpdated
        )
    }

    private func transform(_ category: GraphQL.AnalysisResultDataFields.Category) -> CategorySignals {
        CategorySignals(
            category: transform(category.getDataCategory()),
            collected: transform(category.getSignalValue(forKey: "collected")),
            dataLabels: category.dataLabels,
            sharedWithThirdParties: transform(category.getShareStyle(forKey: "sharedWithThirdParties")),
            monetized: transform(category.getSignalValue(forKey: "monetized")),
            retained: transform(category.getSignalValue(forKey: "retained")),
            retention: category.retention.map(transform(_:)),
            userCanOptOut: transform(category.getSignalValue(forKey: "userCanOptOut")),
            requiredForService: category.getOptionalSignalValue(forKey: "requiredForService").map(transform(_:)),
            requiredForLaw: category.getOptionalSignalValue(forKey: "requiredForLaw").map(transform(_:))
        )
    }

    private func transform(_ retention: GraphQL.AnalysisResultDataFields.Category.Retention) -> RetentionInfo {
        RetentionInfo(
            style: transform(retention.getRetentionStyle()),
            timeInDays: retention.timeInDays,
            additionalInfo: retention.additionalInfo
        )
    }

    private func transform(_ capabilities: GraphQL.AnalysisResultDataFields.Capability) -> CapabilitySignals {
        CapabilitySignals(
            supportsAccountCreation: transform(capabilities.getSignalValue(forKey: "supportsAccountCreation")),
            supportsAccountDeletion: transform(capabilities.getSignalValue(forKey: "supportsAccountDeletion")),
            supportsDataDeletionRequests: transform(capabilities.getSignalValue(forKey: "supportsDataDeletionRequests")),
            supportsDataExport: transform(capabilities.getSignalValue(forKey: "supportsDataExport")),
            supportsSubscriptions: transform(capabilities.getSignalValue(forKey: "supportsSubscriptions")),
            sellsPersonalInformation: transform(capabilities.getSignalValue(forKey: "sellsPersonalInformation")),
            usesCookiesOrTracking: transform(capabilities.getSignalValue(forKey: "usesCookiesOrTracking")),
            supportsTwoFactorAuth: transform(capabilities.getSignalValue(forKey: "supportsTwoFactorAuth"))
        )
    }

    private func transform(_ risk: GraphQL.AnalysisResultDataFields.RiskIndicator) -> RiskIndicators {
        RiskIndicators(
            dataCollectionBreadth: risk.dataCollectionBreadth,
            collectsSensitiveDataForNonEssentialPurposes: transform(
                risk.getSignalValue(forKey: "collectsSensitiveDataForNonEssentialPurposes")
            ),
            sellsPersonalInformation: transform(risk.getSignalValue(forKey: "sellsPersonalInformation")),
            maxRetentionDays: risk.maxRetentionDays,
            hasIndefiniteRetention: transform(risk.getSignalValue(forKey: "hasIndefiniteRetention")),
            encryptionPractices: transform(risk.getSignalValue(forKey: "encryptionPractices")),
            breachRisk: transform(risk.getSignalValue(forKey: "breachRisk"))
        )
    }

    private func transform(_ identity: GraphQL.AnalysisResultDataFields.OrganizationIdentity) -> OrganizationIdentity {
        OrganizationIdentity(
            brandName: identity.brandName,
            companyName: identity.companyName,
            primaryCategory: identity.getOptionalOrganizationCategory(forKey: "primaryCategory").map(transform(_:)),
            categories: identity.getOrganizationCategories(forKey: "categories").map(transform(_:))
        )
    }

    // MARK: - Enum mapping

    /// Maps the shared `AnalysisResultStatus`.
    func transform(_ status: GraphQL.AnalysisResultStatus) -> AnalysisResultStatus {
        switch status {
        case .pending:
            return .pending
        case .complete:
            return .complete
        case .partial:
            return .partial
        case .failed:
            return .failed
        case .unavailable:
            return .unavailable
        case .unknown:
            return .unknown
        }
    }

    private func transform(_ signal: GraphQL.SignalValue) -> SignalValue {
        switch signal {
        case .yes:
            return .yes
        case .no:
            return .no
        case .unknown:
            // Covers both the domain `UNKNOWN` value and any value this SDK version does not recognize.
            return .unknown
        }
    }

    private func transform(_ style: GraphQL.ShareStyle) -> ShareStyle {
        switch style {
        case .shared:
            return .shared
        case .sharedWithConsent:
            return .sharedWithConsent
        case .inferenceShared:
            return .inferenceShared
        case .none:
            return .none
        case .unknown:
            return .unknown
        }
    }

    private func transform(_ style: GraphQL.RetentionStyle) -> RetentionStyle {
        switch style {
        case .indefinite:
            return .indefinite
        case .relativeToAccountClosureTime:
            return .relativeToAccountClosureTime
        case .relativeToDataStorageTime:
            return .relativeToDataStorageTime
        case .other, .unknown:
            return .other
        }
    }

    private func transform(_ category: GraphQL.DataCategory) -> DataCategory {
        switch category {
        case .accountProfile:
            return .accountProfile
        case .authentication:
            return .authentication
        case .background:
            return .background
        case .biometric:
            return .biometric
        case .communication:
            return .communication
        case .contacts:
            return .contacts
        case .demographic:
            return .demographic
        case .deviceIdentifier:
            return .deviceIdentifier
        case .financial:
            return .financial
        case .governmentIssued:
            return .governmentIssued
        case .health:
            return .health
        case .inferences:
            return .inferences
        case .location:
            return .location
        case .pii:
            return .pii
        case .thirdPartyData:
            return .thirdPartyData
        case .usage:
            return .usage
        case .other, .unknown:
            return .other
        }
    }

    // swiftlint:disable cyclomatic_complexity
    /// Maps a generated organization category. Unrecognized values map to `.other` so a value the
    /// service adds later is surfaced as a catch-all rather than being silently dropped.
    private func transform(_ category: GraphQL.OrganizationCategory) -> OrganizationCategory {
        switch category {
        case .finance:
            return .finance
        case .cryptocurrency:
            return .cryptocurrency
        case .insurance:
            return .insurance
        case .dataBroker:
            return .dataBroker
        case .adTechAndMarketing:
            return .adTechAndMarketing
        case .energyAndUtilities:
            return .energyAndUtilities
        case .communications:
            return .communications
        case .government:
            return .government
        case .military:
            return .military
        case .realEstate:
            return .realEstate
        case .shopping:
            return .shopping
        case .shippingAndDelivery:
            return .shippingAndDelivery
        case .foodAndDining:
            return .foodAndDining
        case .automotive:
            return .automotive
        case .travel:
            return .travel
        case .transportation:
            return .transportation
        case .entertainment:
            return .entertainment
        case .news:
            return .news
        case .videoGames:
            return .videoGames
        case .gambling:
            return .gambling
        case .sportsAndFitness:
            return .sportsAndFitness
        case .socialMedia:
            return .socialMedia
        case .dating:
            return .dating
        case .communityAndCharity:
            return .communityAndCharity
        case .health:
            return .health
        case .education:
            return .education
        case .employment:
            return .employment
        case .technology:
            return .technology
        case .privacyAndSecurity:
            return .privacyAndSecurity
        case .personalEmail:
            return .personalEmail
        case .other, .unknown:
            return .other
        }
    }
    // swiftlint:enable cyclomatic_complexity

    // MARK: - Helpers

    /// Convert epoch milliseconds (as returned by the service) into a `Date`.
    private static func date(fromEpochMs epochMs: Double) -> Date {
        Date(timeIntervalSince1970: epochMs / 1000)
    }
}
