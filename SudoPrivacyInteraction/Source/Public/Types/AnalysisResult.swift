//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Aggregate status of an analysis result.
///
/// `PENDING` indicates an asynchronous source is still resolving; re-query for the terminal result.
public enum AnalysisResultStatus: String, Equatable, Sendable {
    case pending
    case complete
    case partial
    case failed
    case unavailable
    /// A status returned by the service that this version of the SDK does not recognize.
    case unknown
}

/// Tri-state signal representing confidence in a determination.
public enum SignalValue: String, Equatable, Sendable {
    case yes
    case no
    /// The signal could not be determined, or the service returned a value this SDK does not recognize.
    case unknown
}

/// How data sharing for a category is classified.
public enum ShareStyle: String, Equatable, Sendable {
    case shared
    case sharedWithConsent
    case inferenceShared
    case none
    /// A sharing classification returned by the service that this version of the SDK does not recognize.
    case unknown
}

/// How a data retention period is measured.
public enum RetentionStyle: String, Equatable, Sendable {
    case indefinite
    case relativeToAccountClosureTime
    case relativeToDataStorageTime
    case other
}

/// Category of personal data identified in a privacy policy.
public enum DataCategory: String, Equatable, Sendable {
    case accountProfile
    case authentication
    case background
    case biometric
    case communication
    case contacts
    case demographic
    case deviceIdentifier
    case financial
    case governmentIssued
    case health
    case inferences
    case location
    case other
    case pii
    case thirdPartyData
    case usage
}

/// Business category for an organization.
public enum OrganizationCategory: String, Equatable, Sendable {
    case finance
    case cryptocurrency
    case insurance
    case dataBroker
    case adTechAndMarketing
    case energyAndUtilities
    case communications
    case government
    case military
    case realEstate
    case shopping
    case shippingAndDelivery
    case foodAndDining
    case automotive
    case travel
    case transportation
    case entertainment
    case news
    case videoGames
    case gambling
    case sportsAndFitness
    case socialMedia
    case dating
    case adultEntertainment
    case communityAndCharity
    case health
    case education
    case employment
    case technology
    case privacyAndSecurity
    case personalEmail
    case other
}

/// Retention details for a specific data category.
public struct RetentionInfo: Equatable, Sendable {

    /// How the retention period is expressed.
    public let style: RetentionStyle

    /// Retention period in days, when specified.
    public let timeInDays: Int?

    /// Free-text clarification from the policy.
    public let additionalInfo: String?

    public init(style: RetentionStyle, timeInDays: Int?, additionalInfo: String?) {
        self.style = style
        self.timeInDays = timeInDays
        self.additionalInfo = additionalInfo
    }
}

/// Privacy signals specific to a single data category.
public struct CategorySignals: Equatable, Sendable {

    /// The data category these signals apply to.
    public let category: DataCategory

    /// Whether this category of data is collected.
    public let collected: SignalValue

    /// Specific data labels collected within this category.
    public let dataLabels: [String]

    /// Whether this category is shared with third parties.
    public let sharedWithThirdParties: ShareStyle

    /// Whether this category is monetized (used for advertising/monetization).
    public let monetized: SignalValue

    /// Whether this category is retained.
    public let retained: SignalValue

    /// Retention details, when `retained` is `.yes`.
    public let retention: RetentionInfo?

    /// Whether the user can opt out of this category's collection.
    public let userCanOptOut: SignalValue

    /// Whether this data is required for the core service to function.
    public let requiredForService: SignalValue?

    /// Whether this data is required for legal or regulatory compliance.
    public let requiredForLaw: SignalValue?

    public init(
        category: DataCategory,
        collected: SignalValue,
        dataLabels: [String],
        sharedWithThirdParties: ShareStyle,
        monetized: SignalValue,
        retained: SignalValue,
        retention: RetentionInfo?,
        userCanOptOut: SignalValue,
        requiredForService: SignalValue?,
        requiredForLaw: SignalValue?
    ) {
        self.category = category
        self.collected = collected
        self.dataLabels = dataLabels
        self.sharedWithThirdParties = sharedWithThirdParties
        self.monetized = monetized
        self.retained = retained
        self.retention = retention
        self.userCanOptOut = userCanOptOut
        self.requiredForService = requiredForService
        self.requiredForLaw = requiredForLaw
    }
}

/// Signals derived from privacy actions/capabilities (not category-specific).
public struct CapabilitySignals: Equatable, Sendable {

    public let supportsAccountCreation: SignalValue
    public let supportsAccountDeletion: SignalValue
    public let supportsDataDeletionRequests: SignalValue
    public let supportsDataExport: SignalValue
    public let supportsSubscriptions: SignalValue

    /// Whether the organization exposes an opt-out-of-sale control to users.
    public let supportsOptOutOfSale: SignalValue

    public let usesCookiesOrTracking: SignalValue
    public let supportsTwoFactorAuth: SignalValue

    /// Whether the organization sells personal information.
    @available(*, deprecated, message: "Use supportsOptOutOfSale instead.")
    public var sellsPersonalInformation: SignalValue { supportsOptOutOfSale }

    public init(
        supportsAccountCreation: SignalValue,
        supportsAccountDeletion: SignalValue,
        supportsDataDeletionRequests: SignalValue,
        supportsDataExport: SignalValue,
        supportsSubscriptions: SignalValue,
        supportsOptOutOfSale: SignalValue,
        usesCookiesOrTracking: SignalValue,
        supportsTwoFactorAuth: SignalValue
    ) {
        self.supportsAccountCreation = supportsAccountCreation
        self.supportsAccountDeletion = supportsAccountDeletion
        self.supportsDataDeletionRequests = supportsDataDeletionRequests
        self.supportsDataExport = supportsDataExport
        self.supportsSubscriptions = supportsSubscriptions
        self.supportsOptOutOfSale = supportsOptOutOfSale
        self.usesCookiesOrTracking = usesCookiesOrTracking
        self.supportsTwoFactorAuth = supportsTwoFactorAuth
    }
}

/// Aggregated risk indicators derived from categories and capabilities.
public struct RiskIndicators: Equatable, Sendable {

    /// Total number of data categories collected.
    public let dataCollectionBreadth: Int

    /// Whether sensitive categories are collected for non-essential purposes.
    public let collectsSensitiveDataForNonEssentialPurposes: SignalValue

    /// Whether data selling is indicated.
    public let sellsPersonalInformation: SignalValue

    /// Longest known retention period in days across all categories.
    public let maxRetentionDays: Int?

    /// Whether any category has indefinite retention.
    public let hasIndefiniteRetention: SignalValue

    /// Not determinable from policy analysis alone.
    public let encryptionPractices: SignalValue

    /// Not determinable from policy analysis alone.
    public let breachRisk: SignalValue

    public init(
        dataCollectionBreadth: Int,
        collectsSensitiveDataForNonEssentialPurposes: SignalValue,
        sellsPersonalInformation: SignalValue,
        maxRetentionDays: Int?,
        hasIndefiniteRetention: SignalValue,
        encryptionPractices: SignalValue,
        breachRisk: SignalValue
    ) {
        self.dataCollectionBreadth = dataCollectionBreadth
        self.collectsSensitiveDataForNonEssentialPurposes = collectsSensitiveDataForNonEssentialPurposes
        self.sellsPersonalInformation = sellsPersonalInformation
        self.maxRetentionDays = maxRetentionDays
        self.hasIndefiniteRetention = hasIndefiniteRetention
        self.encryptionPractices = encryptionPractices
        self.breachRisk = breachRisk
    }
}

/// Brand identity and business categorization for an organization.
public struct OrganizationIdentity: Equatable, Sendable {

    /// The consumer-facing brand name (e.g. "Facebook").
    public let brandName: String?

    /// The company that owns the brand (e.g. "Meta").
    public let companyName: String?

    /// The single most representative business category.
    public let primaryCategory: OrganizationCategory?

    /// All applicable business categories (includes primary).
    public let categories: [OrganizationCategory]

    public init(
        brandName: String?,
        companyName: String?,
        primaryCategory: OrganizationCategory?,
        categories: [OrganizationCategory]
    ) {
        self.brandName = brandName
        self.companyName = companyName
        self.primaryCategory = primaryCategory
        self.categories = categories
    }
}

/// A single scoring aspect and its contribution to the overall score.
public struct ScoreContribution: Equatable, Sendable {

    /// Identifier for the scoring aspect (e.g. "dataCollection").
    public let aspect: String

    /// Numeric contribution to the score (negative = penalty, positive = bonus).
    public let contribution: Double

    public init(aspect: String, contribution: Double) {
        self.aspect = aspect
        self.contribution = contribution
    }
}

/// How much of the scoring-relevant input had a known value.
///
/// A low ratio means the score rests on few known signals and should be treated as
/// lower-confidence.
public struct ScoreCoverage: Equatable, Sendable {

    /// Scoring aspects with a known value.
    public let evaluated: Int

    /// Total scoring aspects the calculator considers.
    public let total: Int

    public init(evaluated: Int, total: Int) {
        self.evaluated = evaluated
        self.total = total
    }
}

/// Overall privacy score for an organization.
public struct PrivacyScore: Equatable, Sendable {

    /// Numeric score (0...100). Higher is better.
    public let score: Double

    /// Breakdown of how each aspect contributed to the score.
    public let breakdown: [ScoreContribution]

    /// How much of the scoring-relevant input had a known value.
    public let coverage: ScoreCoverage

    public init(score: Double, breakdown: [ScoreContribution], coverage: ScoreCoverage) {
        self.score = score
        self.breakdown = breakdown
        self.coverage = coverage
    }
}

/// Concise human-readable summary of privacy-related findings.
public struct PrivacySummary: Equatable, Sendable {

    /// Up to 5 key takeaways, deterministically generated.
    public let bulletPoints: [String]

    /// URL of the source material that was analyzed.
    public let sourceUrl: String

    /// When the source material was last updated (as reported by the organization).
    public let sourceLastUpdated: String?

    public init(bulletPoints: [String], sourceUrl: String, sourceLastUpdated: String?) {
        self.bulletPoints = bulletPoints
        self.sourceUrl = sourceUrl
        self.sourceLastUpdated = sourceLastUpdated
    }
}

/// The structured data payload for an analysis result.
public struct AnalysisResultData: Equatable, Sendable {

    /// Overall privacy score for the organization. `nil` when scoring is disabled.
    public let privacyScore: PrivacyScore?

    /// Concise human-readable summary.
    public let privacySummary: PrivacySummary

    /// Per-category signal breakdown.
    public let categories: [CategorySignals]

    /// Action-derived capability signals (not category-specific).
    public let capabilities: CapabilitySignals

    /// Aggregated risk indicators.
    public let riskIndicators: RiskIndicators

    /// Organization identity (brand, company, business categories).
    public let organizationIdentity: OrganizationIdentity?

    /// Attribution strings crediting each data source that contributed to this result.
    public let attribution: [String]

    public init(
        privacyScore: PrivacyScore?,
        privacySummary: PrivacySummary,
        categories: [CategorySignals],
        capabilities: CapabilitySignals,
        riskIndicators: RiskIndicators,
        organizationIdentity: OrganizationIdentity?,
        attribution: [String]
    ) {
        self.privacyScore = privacyScore
        self.privacySummary = privacySummary
        self.categories = categories
        self.capabilities = capabilities
        self.riskIndicators = riskIndicators
        self.organizationIdentity = organizationIdentity
        self.attribution = attribution
    }
}

/// Result of analyzing a data holder associated with a virtual presence.
///
/// The structured `data` payload is populated when `status` is `.complete` or `.partial`.
public struct AnalysisResult: Equatable, Sendable {

    /// Unique identifier of the analysis result.
    public let id: String

    /// Identifier of the virtual presence this analysis is associated with.
    public let virtualPresenceId: String

    /// Identifier of the data holder that was analyzed.
    public let dataHolderIdentifier: String

    /// Aggregate status of the analysis.
    public let status: AnalysisResultStatus

    /// Time the aggregate was last derived.
    public let lastAnalyzedAt: Date

    /// Structured analysis payload. Populated when `status` is `.complete` or `.partial`.
    public let data: AnalysisResultData?

    /// Identifier of the Sudo that owns this analysis result.
    public let owner: String

    /// Record version, used for optimistic concurrency.
    public let version: Int

    /// Date the analysis result was created.
    public let createdAt: Date

    /// Date the analysis result was last updated.
    public let updatedAt: Date

    public init(
        id: String,
        virtualPresenceId: String,
        dataHolderIdentifier: String,
        status: AnalysisResultStatus,
        lastAnalyzedAt: Date,
        data: AnalysisResultData?,
        owner: String,
        version: Int,
        createdAt: Date,
        updatedAt: Date
    ) {
        self.id = id
        self.virtualPresenceId = virtualPresenceId
        self.dataHolderIdentifier = dataHolderIdentifier
        self.status = status
        self.lastAnalyzedAt = lastAnalyzedAt
        self.data = data
        self.owner = owner
        self.version = version
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
