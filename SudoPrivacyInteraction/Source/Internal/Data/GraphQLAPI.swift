// swiftlint:disable all
//  This file was automatically generated and should not be edited.

import Amplify
import SudoApiClient

struct GraphQL {

internal enum ActionIntent: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case accessMyData
  case deleteMyData
  case limitDataUse
  case other
  case stopContact
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "ACCESS_MY_DATA": self = .accessMyData
      case "DELETE_MY_DATA": self = .deleteMyData
      case "LIMIT_DATA_USE": self = .limitDataUse
      case "OTHER": self = .other
      case "STOP_CONTACT": self = .stopContact
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .accessMyData: return "ACCESS_MY_DATA"
      case .deleteMyData: return "DELETE_MY_DATA"
      case .limitDataUse: return "LIMIT_DATA_USE"
      case .other: return "OTHER"
      case .stopContact: return "STOP_CONTACT"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: ActionIntent, rhs: ActionIntent) -> Bool {
    switch (lhs, rhs) {
      case (.accessMyData, .accessMyData): return true
      case (.deleteMyData, .deleteMyData): return true
      case (.limitDataUse, .limitDataUse): return true
      case (.other, .other): return true
      case (.stopContact, .stopContact): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum ActionFulfilmentMethod: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case assisted
  case delegated
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "ASSISTED": self = .assisted
      case "DELEGATED": self = .delegated
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .assisted: return "ASSISTED"
      case .delegated: return "DELEGATED"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: ActionFulfilmentMethod, rhs: ActionFulfilmentMethod) -> Bool {
    switch (lhs, rhs) {
      case (.assisted, .assisted): return true
      case (.delegated, .delegated): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum ActionStatus: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case completedUnverified
  case completedVerified
  case contradicted
  case failed
  case inProgress
  case pending
  case requiresUserInput
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "COMPLETED_UNVERIFIED": self = .completedUnverified
      case "COMPLETED_VERIFIED": self = .completedVerified
      case "CONTRADICTED": self = .contradicted
      case "FAILED": self = .failed
      case "IN_PROGRESS": self = .inProgress
      case "PENDING": self = .pending
      case "REQUIRES_USER_INPUT": self = .requiresUserInput
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .completedUnverified: return "COMPLETED_UNVERIFIED"
      case .completedVerified: return "COMPLETED_VERIFIED"
      case .contradicted: return "CONTRADICTED"
      case .failed: return "FAILED"
      case .inProgress: return "IN_PROGRESS"
      case .pending: return "PENDING"
      case .requiresUserInput: return "REQUIRES_USER_INPUT"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: ActionStatus, rhs: ActionStatus) -> Bool {
    switch (lhs, rhs) {
      case (.completedUnverified, .completedUnverified): return true
      case (.completedVerified, .completedVerified): return true
      case (.contradicted, .contradicted): return true
      case (.failed, .failed): return true
      case (.inProgress, .inProgress): return true
      case (.pending, .pending): return true
      case (.requiresUserInput, .requiresUserInput): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum ActionOrigin: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case analysis
  case discovery
  case `static`
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "ANALYSIS": self = .analysis
      case "DISCOVERY": self = .discovery
      case "STATIC": self = .static
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .analysis: return "ANALYSIS"
      case .discovery: return "DISCOVERY"
      case .static: return "STATIC"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: ActionOrigin, rhs: ActionOrigin) -> Bool {
    switch (lhs, rhs) {
      case (.analysis, .analysis): return true
      case (.discovery, .discovery): return true
      case (.static, .static): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum DataCategory: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
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
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "ACCOUNT_PROFILE": self = .accountProfile
      case "AUTHENTICATION": self = .authentication
      case "BACKGROUND": self = .background
      case "BIOMETRIC": self = .biometric
      case "COMMUNICATION": self = .communication
      case "CONTACTS": self = .contacts
      case "DEMOGRAPHIC": self = .demographic
      case "DEVICE_IDENTIFIER": self = .deviceIdentifier
      case "FINANCIAL": self = .financial
      case "GOVERNMENT_ISSUED": self = .governmentIssued
      case "HEALTH": self = .health
      case "INFERENCES": self = .inferences
      case "LOCATION": self = .location
      case "OTHER": self = .other
      case "PII": self = .pii
      case "THIRD_PARTY_DATA": self = .thirdPartyData
      case "USAGE": self = .usage
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .accountProfile: return "ACCOUNT_PROFILE"
      case .authentication: return "AUTHENTICATION"
      case .background: return "BACKGROUND"
      case .biometric: return "BIOMETRIC"
      case .communication: return "COMMUNICATION"
      case .contacts: return "CONTACTS"
      case .demographic: return "DEMOGRAPHIC"
      case .deviceIdentifier: return "DEVICE_IDENTIFIER"
      case .financial: return "FINANCIAL"
      case .governmentIssued: return "GOVERNMENT_ISSUED"
      case .health: return "HEALTH"
      case .inferences: return "INFERENCES"
      case .location: return "LOCATION"
      case .other: return "OTHER"
      case .pii: return "PII"
      case .thirdPartyData: return "THIRD_PARTY_DATA"
      case .usage: return "USAGE"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: DataCategory, rhs: DataCategory) -> Bool {
    switch (lhs, rhs) {
      case (.accountProfile, .accountProfile): return true
      case (.authentication, .authentication): return true
      case (.background, .background): return true
      case (.biometric, .biometric): return true
      case (.communication, .communication): return true
      case (.contacts, .contacts): return true
      case (.demographic, .demographic): return true
      case (.deviceIdentifier, .deviceIdentifier): return true
      case (.financial, .financial): return true
      case (.governmentIssued, .governmentIssued): return true
      case (.health, .health): return true
      case (.inferences, .inferences): return true
      case (.location, .location): return true
      case (.other, .other): return true
      case (.pii, .pii): return true
      case (.thirdPartyData, .thirdPartyData): return true
      case (.usage, .usage): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum SignalValue: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case no
  case yes
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "NO": self = .no
      case "YES": self = .yes
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .no: return "NO"
      case .yes: return "YES"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: SignalValue, rhs: SignalValue) -> Bool {
    switch (lhs, rhs) {
      case (.no, .no): return true
      case (.yes, .yes): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum ShareStyle: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case inferenceShared
  case `none`
  case shared
  case sharedWithConsent
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "INFERENCE_SHARED": self = .inferenceShared
      case "NONE": self = .none
      case "SHARED": self = .shared
      case "SHARED_WITH_CONSENT": self = .sharedWithConsent
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .inferenceShared: return "INFERENCE_SHARED"
      case .none: return "NONE"
      case .shared: return "SHARED"
      case .sharedWithConsent: return "SHARED_WITH_CONSENT"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: ShareStyle, rhs: ShareStyle) -> Bool {
    switch (lhs, rhs) {
      case (.inferenceShared, .inferenceShared): return true
      case (.none, .none): return true
      case (.shared, .shared): return true
      case (.sharedWithConsent, .sharedWithConsent): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum RetentionStyle: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case indefinite
  case other
  case relativeToAccountClosureTime
  case relativeToDataStorageTime
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "INDEFINITE": self = .indefinite
      case "OTHER": self = .other
      case "RELATIVE_TO_ACCOUNT_CLOSURE_TIME": self = .relativeToAccountClosureTime
      case "RELATIVE_TO_DATA_STORAGE_TIME": self = .relativeToDataStorageTime
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .indefinite: return "INDEFINITE"
      case .other: return "OTHER"
      case .relativeToAccountClosureTime: return "RELATIVE_TO_ACCOUNT_CLOSURE_TIME"
      case .relativeToDataStorageTime: return "RELATIVE_TO_DATA_STORAGE_TIME"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: RetentionStyle, rhs: RetentionStyle) -> Bool {
    switch (lhs, rhs) {
      case (.indefinite, .indefinite): return true
      case (.other, .other): return true
      case (.relativeToAccountClosureTime, .relativeToAccountClosureTime): return true
      case (.relativeToDataStorageTime, .relativeToDataStorageTime): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum OrganizationCategory: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case adTechAndMarketing
  case automotive
  case communications
  case communityAndCharity
  case cryptocurrency
  case dataBroker
  case dating
  case education
  case employment
  case energyAndUtilities
  case entertainment
  case finance
  case foodAndDining
  case gambling
  case government
  case health
  case insurance
  case military
  case news
  case other
  case personalEmail
  case privacyAndSecurity
  case realEstate
  case shippingAndDelivery
  case shopping
  case socialMedia
  case sportsAndFitness
  case technology
  case transportation
  case travel
  case videoGames
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "AdTechAndMarketing": self = .adTechAndMarketing
      case "Automotive": self = .automotive
      case "Communications": self = .communications
      case "CommunityAndCharity": self = .communityAndCharity
      case "Cryptocurrency": self = .cryptocurrency
      case "DataBroker": self = .dataBroker
      case "Dating": self = .dating
      case "Education": self = .education
      case "Employment": self = .employment
      case "EnergyAndUtilities": self = .energyAndUtilities
      case "Entertainment": self = .entertainment
      case "Finance": self = .finance
      case "FoodAndDining": self = .foodAndDining
      case "Gambling": self = .gambling
      case "Government": self = .government
      case "Health": self = .health
      case "Insurance": self = .insurance
      case "Military": self = .military
      case "News": self = .news
      case "Other": self = .other
      case "PersonalEmail": self = .personalEmail
      case "PrivacyAndSecurity": self = .privacyAndSecurity
      case "RealEstate": self = .realEstate
      case "ShippingAndDelivery": self = .shippingAndDelivery
      case "Shopping": self = .shopping
      case "SocialMedia": self = .socialMedia
      case "SportsAndFitness": self = .sportsAndFitness
      case "Technology": self = .technology
      case "Transportation": self = .transportation
      case "Travel": self = .travel
      case "VideoGames": self = .videoGames
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .adTechAndMarketing: return "AdTechAndMarketing"
      case .automotive: return "Automotive"
      case .communications: return "Communications"
      case .communityAndCharity: return "CommunityAndCharity"
      case .cryptocurrency: return "Cryptocurrency"
      case .dataBroker: return "DataBroker"
      case .dating: return "Dating"
      case .education: return "Education"
      case .employment: return "Employment"
      case .energyAndUtilities: return "EnergyAndUtilities"
      case .entertainment: return "Entertainment"
      case .finance: return "Finance"
      case .foodAndDining: return "FoodAndDining"
      case .gambling: return "Gambling"
      case .government: return "Government"
      case .health: return "Health"
      case .insurance: return "Insurance"
      case .military: return "Military"
      case .news: return "News"
      case .other: return "Other"
      case .personalEmail: return "PersonalEmail"
      case .privacyAndSecurity: return "PrivacyAndSecurity"
      case .realEstate: return "RealEstate"
      case .shippingAndDelivery: return "ShippingAndDelivery"
      case .shopping: return "Shopping"
      case .socialMedia: return "SocialMedia"
      case .sportsAndFitness: return "SportsAndFitness"
      case .technology: return "Technology"
      case .transportation: return "Transportation"
      case .travel: return "Travel"
      case .videoGames: return "VideoGames"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: OrganizationCategory, rhs: OrganizationCategory) -> Bool {
    switch (lhs, rhs) {
      case (.adTechAndMarketing, .adTechAndMarketing): return true
      case (.automotive, .automotive): return true
      case (.communications, .communications): return true
      case (.communityAndCharity, .communityAndCharity): return true
      case (.cryptocurrency, .cryptocurrency): return true
      case (.dataBroker, .dataBroker): return true
      case (.dating, .dating): return true
      case (.education, .education): return true
      case (.employment, .employment): return true
      case (.energyAndUtilities, .energyAndUtilities): return true
      case (.entertainment, .entertainment): return true
      case (.finance, .finance): return true
      case (.foodAndDining, .foodAndDining): return true
      case (.gambling, .gambling): return true
      case (.government, .government): return true
      case (.health, .health): return true
      case (.insurance, .insurance): return true
      case (.military, .military): return true
      case (.news, .news): return true
      case (.other, .other): return true
      case (.personalEmail, .personalEmail): return true
      case (.privacyAndSecurity, .privacyAndSecurity): return true
      case (.realEstate, .realEstate): return true
      case (.shippingAndDelivery, .shippingAndDelivery): return true
      case (.shopping, .shopping): return true
      case (.socialMedia, .socialMedia): return true
      case (.sportsAndFitness, .sportsAndFitness): return true
      case (.technology, .technology): return true
      case (.transportation, .transportation): return true
      case (.travel, .travel): return true
      case (.videoGames, .videoGames): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum AnalysisResultStatus: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case complete
  case failed
  case partial
  case pending
  case unavailable
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "COMPLETE": self = .complete
      case "FAILED": self = .failed
      case "PARTIAL": self = .partial
      case "PENDING": self = .pending
      case "UNAVAILABLE": self = .unavailable
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .complete: return "COMPLETE"
      case .failed: return "FAILED"
      case .partial: return "PARTIAL"
      case .pending: return "PENDING"
      case .unavailable: return "UNAVAILABLE"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: AnalysisResultStatus, rhs: AnalysisResultStatus) -> Bool {
    switch (lhs, rhs) {
      case (.complete, .complete): return true
      case (.failed, .failed): return true
      case (.partial, .partial): return true
      case (.pending, .pending): return true
      case (.unavailable, .unavailable): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum DataHolderProtectionState: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case actionRequested
  case monitored
  case resolved
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "ACTION_REQUESTED": self = .actionRequested
      case "MONITORED": self = .monitored
      case "RESOLVED": self = .resolved
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .actionRequested: return "ACTION_REQUESTED"
      case .monitored: return "MONITORED"
      case .resolved: return "RESOLVED"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: DataHolderProtectionState, rhs: DataHolderProtectionState) -> Bool {
    switch (lhs, rhs) {
      case (.actionRequested, .actionRequested): return true
      case (.monitored, .monitored): return true
      case (.resolved, .resolved): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum DataHolderChangeType: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case metadataUpdate
  case new
  case significantUpdate
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "METADATA_UPDATE": self = .metadataUpdate
      case "NEW": self = .new
      case "SIGNIFICANT_UPDATE": self = .significantUpdate
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .metadataUpdate: return "METADATA_UPDATE"
      case .new: return "NEW"
      case .significantUpdate: return "SIGNIFICANT_UPDATE"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: DataHolderChangeType, rhs: DataHolderChangeType) -> Bool {
    switch (lhs, rhs) {
      case (.metadataUpdate, .metadataUpdate): return true
      case (.new, .new): return true
      case (.significantUpdate, .significantUpdate): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum ProviderType: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case email
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "EMAIL": self = .email
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .email: return "EMAIL"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: ProviderType, rhs: ProviderType) -> Bool {
    switch (lhs, rhs) {
      case (.email, .email): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum VirtualPresenceState: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case connected
  case error
  case inactive
  case needsReauth
  case scanning
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "CONNECTED": self = .connected
      case "ERROR": self = .error
      case "INACTIVE": self = .inactive
      case "NEEDS_REAUTH": self = .needsReauth
      case "SCANNING": self = .scanning
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .connected: return "CONNECTED"
      case .error: return "ERROR"
      case .inactive: return "INACTIVE"
      case .needsReauth: return "NEEDS_REAUTH"
      case .scanning: return "SCANNING"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: VirtualPresenceState, rhs: VirtualPresenceState) -> Bool {
    switch (lhs, rhs) {
      case (.connected, .connected): return true
      case (.error, .error): return true
      case (.inactive, .inactive): return true
      case (.needsReauth, .needsReauth): return true
      case (.scanning, .scanning): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum RelationshipProvider: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case gmailProvider
  case testProvider
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "GMAIL_PROVIDER": self = .gmailProvider
      case "TEST_PROVIDER": self = .testProvider
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .gmailProvider: return "GMAIL_PROVIDER"
      case .testProvider: return "TEST_PROVIDER"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: RelationshipProvider, rhs: RelationshipProvider) -> Bool {
    switch (lhs, rhs) {
      case (.gmailProvider, .gmailProvider): return true
      case (.testProvider, .testProvider): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal struct ConnectVirtualPresenceInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(authCode: Optional<AuthCodeInput?> = nil, refreshToken: Optional<RefreshTokenInput?> = nil, relationshipProvider: Optional<RelationshipProvider?> = nil) {
    graphQLMap = ["authCode": authCode, "refreshToken": refreshToken, "relationshipProvider": relationshipProvider]
  }

  internal var authCode: Optional<AuthCodeInput?> {
    get {
      return graphQLMap["authCode"] as? AuthCodeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authCode")
    }
  }

  internal var refreshToken: Optional<RefreshTokenInput?> {
    get {
      return graphQLMap["refreshToken"] as? RefreshTokenInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "refreshToken")
    }
  }

  internal var relationshipProvider: Optional<RelationshipProvider?> {
    get {
      return graphQLMap["relationshipProvider"] as? RelationshipProvider?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "relationshipProvider")
    }
  }
}

internal struct AuthCodeInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(authCode: String, redirectUri: Optional<String?> = nil) {
    graphQLMap = ["authCode": authCode, "redirectUri": redirectUri]
  }

  internal var authCode: String {
    get {
      return graphQLMap["authCode"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authCode")
    }
  }

  internal var redirectUri: Optional<String?> {
    get {
      return graphQLMap["redirectUri"] as? String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "redirectUri")
    }
  }
}

internal struct RefreshTokenInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(expiresInEpochMs: Optional<Double?> = nil, providerIdentity: String, refreshToken: String, scopes: Optional<[String]?> = nil) {
    graphQLMap = ["expiresInEpochMs": expiresInEpochMs, "providerIdentity": providerIdentity, "refreshToken": refreshToken, "scopes": scopes]
  }

  internal var expiresInEpochMs: Optional<Double?> {
    get {
      return graphQLMap["expiresInEpochMs"] as? Double?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "expiresInEpochMs")
    }
  }

  internal var providerIdentity: String {
    get {
      return graphQLMap["providerIdentity"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "providerIdentity")
    }
  }

  internal var refreshToken: String {
    get {
      return graphQLMap["refreshToken"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "refreshToken")
    }
  }

  internal var scopes: Optional<[String]?> {
    get {
      return graphQLMap["scopes"] as? [String]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "scopes")
    }
  }
}

internal struct ScanOptionsInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(earliestScanDate: Optional<String?> = nil, excludeCategories: Optional<[String]?> = nil, excludeDomains: Optional<[String]?> = nil, latestScanDate: Optional<String?> = nil, maximumItemsProcessed: Optional<Int?> = nil) {
    graphQLMap = ["earliestScanDate": earliestScanDate, "excludeCategories": excludeCategories, "excludeDomains": excludeDomains, "latestScanDate": latestScanDate, "maximumItemsProcessed": maximumItemsProcessed]
  }

  internal var earliestScanDate: Optional<String?> {
    get {
      return graphQLMap["earliestScanDate"] as? String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "earliestScanDate")
    }
  }

  internal var excludeCategories: Optional<[String]?> {
    get {
      return graphQLMap["excludeCategories"] as? [String]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "excludeCategories")
    }
  }

  internal var excludeDomains: Optional<[String]?> {
    get {
      return graphQLMap["excludeDomains"] as? [String]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "excludeDomains")
    }
  }

  internal var latestScanDate: Optional<String?> {
    get {
      return graphQLMap["latestScanDate"] as? String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "latestScanDate")
    }
  }

  internal var maximumItemsProcessed: Optional<Int?> {
    get {
      return graphQLMap["maximumItemsProcessed"] as? Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "maximumItemsProcessed")
    }
  }
}

internal struct InitiateActionInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(dataHolderId: GraphQLID, fulfilmentMethod: ActionFulfilmentMethod, intent: ActionIntent) {
    graphQLMap = ["dataHolderId": dataHolderId, "fulfilmentMethod": fulfilmentMethod, "intent": intent]
  }

  internal var dataHolderId: GraphQLID {
    get {
      return graphQLMap["dataHolderId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dataHolderId")
    }
  }

  internal var fulfilmentMethod: ActionFulfilmentMethod {
    get {
      return graphQLMap["fulfilmentMethod"] as! ActionFulfilmentMethod
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fulfilmentMethod")
    }
  }

  internal var intent: ActionIntent {
    get {
      return graphQLMap["intent"] as! ActionIntent
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "intent")
    }
  }
}

internal struct ListVirtualPresencesInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(limit: Optional<Int?> = nil, nextToken: Optional<String?> = nil) {
    graphQLMap = ["limit": limit, "nextToken": nextToken]
  }

  internal var limit: Optional<Int?> {
    get {
      return graphQLMap["limit"] as? Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "limit")
    }
  }

  internal var nextToken: Optional<String?> {
    get {
      return graphQLMap["nextToken"] as? String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nextToken")
    }
  }
}

internal struct OrganizationAnalysisOptions: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(mode: Optional<OrganizationAnalysisMode?> = nil, resolution: Optional<OrganizationAnalysisDomainResolution?> = nil) {
    graphQLMap = ["mode": mode, "resolution": resolution]
  }

  internal var mode: Optional<OrganizationAnalysisMode?> {
    get {
      return graphQLMap["mode"] as? OrganizationAnalysisMode?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mode")
    }
  }

  internal var resolution: Optional<OrganizationAnalysisDomainResolution?> {
    get {
      return graphQLMap["resolution"] as? OrganizationAnalysisDomainResolution?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "resolution")
    }
  }
}

internal enum OrganizationAnalysisMode: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case analyze
  case fetch
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "ANALYZE": self = .analyze
      case "FETCH": self = .fetch
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .analyze: return "ANALYZE"
      case .fetch: return "FETCH"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: OrganizationAnalysisMode, rhs: OrganizationAnalysisMode) -> Bool {
    switch (lhs, rhs) {
      case (.analyze, .analyze): return true
      case (.fetch, .fetch): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal enum OrganizationAnalysisDomainResolution: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case exact
  case registrable
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "EXACT": self = .exact
      case "REGISTRABLE": self = .registrable
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .exact: return "EXACT"
      case .registrable: return "REGISTRABLE"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: OrganizationAnalysisDomainResolution, rhs: OrganizationAnalysisDomainResolution) -> Bool {
    switch (lhs, rhs) {
      case (.exact, .exact): return true
      case (.registrable, .registrable): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal final class ConnectVirtualPresenceMutation: GraphQLMutation {
  internal static let operationString =
    "mutation ConnectVirtualPresence($input: ConnectVirtualPresenceInput) {\n  connectVirtualPresence(input: $input) {\n    __typename\n    ...VirtualPresenceFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(VirtualPresenceFields.fragmentString) }

  internal var input: ConnectVirtualPresenceInput?

  internal init(input: ConnectVirtualPresenceInput? = nil) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("connectVirtualPresence", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(ConnectVirtualPresence.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(connectVirtualPresence: ConnectVirtualPresence) {
      self.init(snapshot: ["__typename": "Mutation", "connectVirtualPresence": connectVirtualPresence.snapshot])
    }

    /// Connect a virtual presence.
    internal var connectVirtualPresence: ConnectVirtualPresence {
      get {
        return ConnectVirtualPresence(snapshot: snapshot["connectVirtualPresence"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "connectVirtualPresence")
      }
    }

    internal struct ConnectVirtualPresence: GraphQLSelectionSet {
      internal static let possibleTypes = ["VirtualPresence"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("providerType", type: .nonNull(.scalar(ProviderType.self))),
        GraphQLField("identifier", type: .nonNull(.scalar(String.self))),
        GraphQLField("state", type: .nonNull(.scalar(VirtualPresenceState.self))),
        GraphQLField("relationshipProvider", type: .scalar(RelationshipProvider.self)),
        GraphQLField("lastScannedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(id: GraphQLID, providerType: ProviderType, identifier: String, state: VirtualPresenceState, relationshipProvider: RelationshipProvider? = nil, lastScannedAtEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
        self.init(snapshot: ["__typename": "VirtualPresence", "id": id, "providerType": providerType, "identifier": identifier, "state": state, "relationshipProvider": relationshipProvider, "lastScannedAtEpochMs": lastScannedAtEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      internal var providerType: ProviderType {
        get {
          return snapshot["providerType"]! as! ProviderType
        }
        set {
          snapshot.updateValue(newValue, forKey: "providerType")
        }
      }

      internal var identifier: String {
        get {
          return snapshot["identifier"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "identifier")
        }
      }

      internal var state: VirtualPresenceState {
        get {
          return snapshot["state"]! as! VirtualPresenceState
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      internal var relationshipProvider: RelationshipProvider? {
        get {
          return snapshot["relationshipProvider"] as? RelationshipProvider
        }
        set {
          snapshot.updateValue(newValue, forKey: "relationshipProvider")
        }
      }

      internal var lastScannedAtEpochMs: Double {
        get {
          return snapshot["lastScannedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastScannedAtEpochMs")
        }
      }

      internal var owner: GraphQLID {
        get {
          return snapshot["owner"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var virtualPresenceFields: VirtualPresenceFields {
          get {
            return VirtualPresenceFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

internal final class DisconnectVirtualPresenceMutation: GraphQLMutation {
  internal static let operationString =
    "mutation DisconnectVirtualPresence($id: String!) {\n  disconnectVirtualPresence(id: $id) {\n    __typename\n    ...VirtualPresenceFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(VirtualPresenceFields.fragmentString) }

  internal var id: String

  internal init(id: String) {
    self.id = id
  }

  internal var variables: GraphQLMap? {
    return ["id": id]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("disconnectVirtualPresence", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(DisconnectVirtualPresence.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(disconnectVirtualPresence: DisconnectVirtualPresence) {
      self.init(snapshot: ["__typename": "Mutation", "disconnectVirtualPresence": disconnectVirtualPresence.snapshot])
    }

    /// Disconnect a virtual presence.
    internal var disconnectVirtualPresence: DisconnectVirtualPresence {
      get {
        return DisconnectVirtualPresence(snapshot: snapshot["disconnectVirtualPresence"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "disconnectVirtualPresence")
      }
    }

    internal struct DisconnectVirtualPresence: GraphQLSelectionSet {
      internal static let possibleTypes = ["VirtualPresence"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("providerType", type: .nonNull(.scalar(ProviderType.self))),
        GraphQLField("identifier", type: .nonNull(.scalar(String.self))),
        GraphQLField("state", type: .nonNull(.scalar(VirtualPresenceState.self))),
        GraphQLField("relationshipProvider", type: .scalar(RelationshipProvider.self)),
        GraphQLField("lastScannedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(id: GraphQLID, providerType: ProviderType, identifier: String, state: VirtualPresenceState, relationshipProvider: RelationshipProvider? = nil, lastScannedAtEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
        self.init(snapshot: ["__typename": "VirtualPresence", "id": id, "providerType": providerType, "identifier": identifier, "state": state, "relationshipProvider": relationshipProvider, "lastScannedAtEpochMs": lastScannedAtEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      internal var providerType: ProviderType {
        get {
          return snapshot["providerType"]! as! ProviderType
        }
        set {
          snapshot.updateValue(newValue, forKey: "providerType")
        }
      }

      internal var identifier: String {
        get {
          return snapshot["identifier"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "identifier")
        }
      }

      internal var state: VirtualPresenceState {
        get {
          return snapshot["state"]! as! VirtualPresenceState
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      internal var relationshipProvider: RelationshipProvider? {
        get {
          return snapshot["relationshipProvider"] as? RelationshipProvider
        }
        set {
          snapshot.updateValue(newValue, forKey: "relationshipProvider")
        }
      }

      internal var lastScannedAtEpochMs: Double {
        get {
          return snapshot["lastScannedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastScannedAtEpochMs")
        }
      }

      internal var owner: GraphQLID {
        get {
          return snapshot["owner"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var virtualPresenceFields: VirtualPresenceFields {
          get {
            return VirtualPresenceFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

internal final class RescanVirtualPresenceMutation: GraphQLMutation {
  internal static let operationString =
    "mutation RescanVirtualPresence($id: String!, $options: ScanOptionsInput) {\n  rescanVirtualPresence(id: $id, options: $options) {\n    __typename\n    ...VirtualPresenceFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(VirtualPresenceFields.fragmentString) }

  internal var id: String
  internal var options: ScanOptionsInput?

  internal init(id: String, options: ScanOptionsInput? = nil) {
    self.id = id
    self.options = options
  }

  internal var variables: GraphQLMap? {
    return ["id": id, "options": options]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("rescanVirtualPresence", arguments: ["id": GraphQLVariable("id"), "options": GraphQLVariable("options")], type: .nonNull(.object(RescanVirtualPresence.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(rescanVirtualPresence: RescanVirtualPresence) {
      self.init(snapshot: ["__typename": "Mutation", "rescanVirtualPresence": rescanVirtualPresence.snapshot])
    }

    /// Rescan an existing virtual presence for new data holders.
    /// Scans from the last scan date forward.
    internal var rescanVirtualPresence: RescanVirtualPresence {
      get {
        return RescanVirtualPresence(snapshot: snapshot["rescanVirtualPresence"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "rescanVirtualPresence")
      }
    }

    internal struct RescanVirtualPresence: GraphQLSelectionSet {
      internal static let possibleTypes = ["VirtualPresence"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("providerType", type: .nonNull(.scalar(ProviderType.self))),
        GraphQLField("identifier", type: .nonNull(.scalar(String.self))),
        GraphQLField("state", type: .nonNull(.scalar(VirtualPresenceState.self))),
        GraphQLField("relationshipProvider", type: .scalar(RelationshipProvider.self)),
        GraphQLField("lastScannedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(id: GraphQLID, providerType: ProviderType, identifier: String, state: VirtualPresenceState, relationshipProvider: RelationshipProvider? = nil, lastScannedAtEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
        self.init(snapshot: ["__typename": "VirtualPresence", "id": id, "providerType": providerType, "identifier": identifier, "state": state, "relationshipProvider": relationshipProvider, "lastScannedAtEpochMs": lastScannedAtEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      internal var providerType: ProviderType {
        get {
          return snapshot["providerType"]! as! ProviderType
        }
        set {
          snapshot.updateValue(newValue, forKey: "providerType")
        }
      }

      internal var identifier: String {
        get {
          return snapshot["identifier"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "identifier")
        }
      }

      internal var state: VirtualPresenceState {
        get {
          return snapshot["state"]! as! VirtualPresenceState
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      internal var relationshipProvider: RelationshipProvider? {
        get {
          return snapshot["relationshipProvider"] as? RelationshipProvider
        }
        set {
          snapshot.updateValue(newValue, forKey: "relationshipProvider")
        }
      }

      internal var lastScannedAtEpochMs: Double {
        get {
          return snapshot["lastScannedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastScannedAtEpochMs")
        }
      }

      internal var owner: GraphQLID {
        get {
          return snapshot["owner"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var virtualPresenceFields: VirtualPresenceFields {
          get {
            return VirtualPresenceFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

internal final class InitiateActionMutation: GraphQLMutation {
  internal static let operationString =
    "mutation InitiateAction($input: InitiateActionInput!) {\n  initiateAction(input: $input) {\n    __typename\n    ...ActionFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(ActionFields.fragmentString).appending(AssistedPayloadFields.fragmentString) }

  internal var input: InitiateActionInput

  internal init(input: InitiateActionInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("initiateAction", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(InitiateAction.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(initiateAction: InitiateAction) {
      self.init(snapshot: ["__typename": "Mutation", "initiateAction": initiateAction.snapshot])
    }

    /// Initiate an action against a data holder relationship. Delegated actions are
    /// performed on the user's behalf; assisted actions return structured materials
    /// for the client to complete.
    internal var initiateAction: InitiateAction {
      get {
        return InitiateAction(snapshot: snapshot["initiateAction"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "initiateAction")
      }
    }

    internal struct InitiateAction: GraphQLSelectionSet {
      internal static let possibleTypes = ["Action"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("dataHolderId", type: .scalar(GraphQLID.self)),
        GraphQLField("intent", type: .nonNull(.scalar(ActionIntent.self))),
        GraphQLField("additionalInfo", type: .scalar(String.self)),
        GraphQLField("fulfilmentMethod", type: .nonNull(.scalar(ActionFulfilmentMethod.self))),
        GraphQLField("status", type: .nonNull(.scalar(ActionStatus.self))),
        GraphQLField("assistedPayload", type: .object(AssistedPayload.selections)),
        GraphQLField("initiatedAtEpochMs", type: .scalar(Double.self)),
        GraphQLField("completedAtEpochMs", type: .scalar(Double.self)),
        GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(id: GraphQLID, virtualPresenceId: GraphQLID, dataHolderId: GraphQLID? = nil, intent: ActionIntent, additionalInfo: String? = nil, fulfilmentMethod: ActionFulfilmentMethod, status: ActionStatus, assistedPayload: AssistedPayload? = nil, initiatedAtEpochMs: Double? = nil, completedAtEpochMs: Double? = nil, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
        self.init(snapshot: ["__typename": "Action", "id": id, "virtualPresenceId": virtualPresenceId, "dataHolderId": dataHolderId, "intent": intent, "additionalInfo": additionalInfo, "fulfilmentMethod": fulfilmentMethod, "status": status, "assistedPayload": assistedPayload.flatMap { $0.snapshot }, "initiatedAtEpochMs": initiatedAtEpochMs, "completedAtEpochMs": completedAtEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      internal var virtualPresenceId: GraphQLID {
        get {
          return snapshot["virtualPresenceId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "virtualPresenceId")
        }
      }

      internal var dataHolderId: GraphQLID? {
        get {
          return snapshot["dataHolderId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "dataHolderId")
        }
      }

      internal var intent: ActionIntent {
        get {
          return snapshot["intent"]! as! ActionIntent
        }
        set {
          snapshot.updateValue(newValue, forKey: "intent")
        }
      }

      internal var additionalInfo: String? {
        get {
          return snapshot["additionalInfo"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "additionalInfo")
        }
      }

      internal var fulfilmentMethod: ActionFulfilmentMethod {
        get {
          return snapshot["fulfilmentMethod"]! as! ActionFulfilmentMethod
        }
        set {
          snapshot.updateValue(newValue, forKey: "fulfilmentMethod")
        }
      }

      internal var status: ActionStatus {
        get {
          return snapshot["status"]! as! ActionStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      internal var assistedPayload: AssistedPayload? {
        get {
          return (snapshot["assistedPayload"] as? Snapshot).flatMap { AssistedPayload(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "assistedPayload")
        }
      }

      internal var initiatedAtEpochMs: Double? {
        get {
          return snapshot["initiatedAtEpochMs"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "initiatedAtEpochMs")
        }
      }

      internal var completedAtEpochMs: Double? {
        get {
          return snapshot["completedAtEpochMs"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "completedAtEpochMs")
        }
      }

      internal var owner: GraphQLID {
        get {
          return snapshot["owner"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var actionFields: ActionFields {
          get {
            return ActionFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct AssistedPayload: GraphQLSelectionSet {
        internal static let possibleTypes = ["AssistedPayload"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("toAddress", type: .scalar(String.self)),
          GraphQLField("unsubscribeUrl", type: .scalar(String.self)),
          GraphQLField("unsubscribeMailto", type: .scalar(String.self)),
          GraphQLField("contact", type: .object(Contact.selections)),
          GraphQLField("jurisdiction", type: .scalar(String.self)),
          GraphQLField("instructions", type: .scalar(String.self)),
          GraphQLField("emailTemplate", type: .object(EmailTemplate.selections)),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(toAddress: String? = nil, unsubscribeUrl: String? = nil, unsubscribeMailto: String? = nil, contact: Contact? = nil, jurisdiction: String? = nil, instructions: String? = nil, emailTemplate: EmailTemplate? = nil) {
          self.init(snapshot: ["__typename": "AssistedPayload", "toAddress": toAddress, "unsubscribeUrl": unsubscribeUrl, "unsubscribeMailto": unsubscribeMailto, "contact": contact.flatMap { $0.snapshot }, "jurisdiction": jurisdiction, "instructions": instructions, "emailTemplate": emailTemplate.flatMap { $0.snapshot }])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var toAddress: String? {
          get {
            return snapshot["toAddress"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "toAddress")
          }
        }

        internal var unsubscribeUrl: String? {
          get {
            return snapshot["unsubscribeUrl"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "unsubscribeUrl")
          }
        }

        internal var unsubscribeMailto: String? {
          get {
            return snapshot["unsubscribeMailto"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "unsubscribeMailto")
          }
        }

        internal var contact: Contact? {
          get {
            return (snapshot["contact"] as? Snapshot).flatMap { Contact(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "contact")
          }
        }

        internal var jurisdiction: String? {
          get {
            return snapshot["jurisdiction"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "jurisdiction")
          }
        }

        internal var instructions: String? {
          get {
            return snapshot["instructions"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "instructions")
          }
        }

        internal var emailTemplate: EmailTemplate? {
          get {
            return (snapshot["emailTemplate"] as? Snapshot).flatMap { EmailTemplate(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "emailTemplate")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var assistedPayloadFields: AssistedPayloadFields {
            get {
              return AssistedPayloadFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        internal struct Contact: GraphQLSelectionSet {
          internal static let possibleTypes = ["ActionContact"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("phone", type: .scalar(String.self)),
            GraphQLField("address", type: .scalar(String.self)),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(email: String? = nil, phone: String? = nil, address: String? = nil) {
            self.init(snapshot: ["__typename": "ActionContact", "email": email, "phone": phone, "address": address])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var email: String? {
            get {
              return snapshot["email"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          internal var phone: String? {
            get {
              return snapshot["phone"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "phone")
            }
          }

          internal var address: String? {
            get {
              return snapshot["address"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "address")
            }
          }
        }

        internal struct EmailTemplate: GraphQLSelectionSet {
          internal static let possibleTypes = ["AssistedEmailTemplate"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("subject", type: .scalar(String.self)),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(subject: String? = nil, body: String) {
            self.init(snapshot: ["__typename": "AssistedEmailTemplate", "subject": subject, "body": body])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var subject: String? {
            get {
              return snapshot["subject"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "subject")
            }
          }

          internal var body: String {
            get {
              return snapshot["body"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "body")
            }
          }
        }
      }
    }
  }
}

internal final class ConfirmActionOutcomeMutation: GraphQLMutation {
  internal static let operationString =
    "mutation ConfirmActionOutcome($id: ID!) {\n  confirmActionOutcome(id: $id) {\n    __typename\n    ...ActionFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(ActionFields.fragmentString).appending(AssistedPayloadFields.fragmentString) }

  internal var id: GraphQLID

  internal init(id: GraphQLID) {
    self.id = id
  }

  internal var variables: GraphQLMap? {
    return ["id": id]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("confirmActionOutcome", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(ConfirmActionOutcome.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(confirmActionOutcome: ConfirmActionOutcome) {
      self.init(snapshot: ["__typename": "Mutation", "confirmActionOutcome": confirmActionOutcome.snapshot])
    }

    /// Confirm that an assisted or delegated action was completed, transitioning it
    /// from COMPLETED_UNVERIFIED to COMPLETED_VERIFIED.
    internal var confirmActionOutcome: ConfirmActionOutcome {
      get {
        return ConfirmActionOutcome(snapshot: snapshot["confirmActionOutcome"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "confirmActionOutcome")
      }
    }

    internal struct ConfirmActionOutcome: GraphQLSelectionSet {
      internal static let possibleTypes = ["Action"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("dataHolderId", type: .scalar(GraphQLID.self)),
        GraphQLField("intent", type: .nonNull(.scalar(ActionIntent.self))),
        GraphQLField("additionalInfo", type: .scalar(String.self)),
        GraphQLField("fulfilmentMethod", type: .nonNull(.scalar(ActionFulfilmentMethod.self))),
        GraphQLField("status", type: .nonNull(.scalar(ActionStatus.self))),
        GraphQLField("assistedPayload", type: .object(AssistedPayload.selections)),
        GraphQLField("initiatedAtEpochMs", type: .scalar(Double.self)),
        GraphQLField("completedAtEpochMs", type: .scalar(Double.self)),
        GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(id: GraphQLID, virtualPresenceId: GraphQLID, dataHolderId: GraphQLID? = nil, intent: ActionIntent, additionalInfo: String? = nil, fulfilmentMethod: ActionFulfilmentMethod, status: ActionStatus, assistedPayload: AssistedPayload? = nil, initiatedAtEpochMs: Double? = nil, completedAtEpochMs: Double? = nil, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
        self.init(snapshot: ["__typename": "Action", "id": id, "virtualPresenceId": virtualPresenceId, "dataHolderId": dataHolderId, "intent": intent, "additionalInfo": additionalInfo, "fulfilmentMethod": fulfilmentMethod, "status": status, "assistedPayload": assistedPayload.flatMap { $0.snapshot }, "initiatedAtEpochMs": initiatedAtEpochMs, "completedAtEpochMs": completedAtEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      internal var virtualPresenceId: GraphQLID {
        get {
          return snapshot["virtualPresenceId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "virtualPresenceId")
        }
      }

      internal var dataHolderId: GraphQLID? {
        get {
          return snapshot["dataHolderId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "dataHolderId")
        }
      }

      internal var intent: ActionIntent {
        get {
          return snapshot["intent"]! as! ActionIntent
        }
        set {
          snapshot.updateValue(newValue, forKey: "intent")
        }
      }

      internal var additionalInfo: String? {
        get {
          return snapshot["additionalInfo"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "additionalInfo")
        }
      }

      internal var fulfilmentMethod: ActionFulfilmentMethod {
        get {
          return snapshot["fulfilmentMethod"]! as! ActionFulfilmentMethod
        }
        set {
          snapshot.updateValue(newValue, forKey: "fulfilmentMethod")
        }
      }

      internal var status: ActionStatus {
        get {
          return snapshot["status"]! as! ActionStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      internal var assistedPayload: AssistedPayload? {
        get {
          return (snapshot["assistedPayload"] as? Snapshot).flatMap { AssistedPayload(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "assistedPayload")
        }
      }

      internal var initiatedAtEpochMs: Double? {
        get {
          return snapshot["initiatedAtEpochMs"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "initiatedAtEpochMs")
        }
      }

      internal var completedAtEpochMs: Double? {
        get {
          return snapshot["completedAtEpochMs"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "completedAtEpochMs")
        }
      }

      internal var owner: GraphQLID {
        get {
          return snapshot["owner"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var actionFields: ActionFields {
          get {
            return ActionFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct AssistedPayload: GraphQLSelectionSet {
        internal static let possibleTypes = ["AssistedPayload"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("toAddress", type: .scalar(String.self)),
          GraphQLField("unsubscribeUrl", type: .scalar(String.self)),
          GraphQLField("unsubscribeMailto", type: .scalar(String.self)),
          GraphQLField("contact", type: .object(Contact.selections)),
          GraphQLField("jurisdiction", type: .scalar(String.self)),
          GraphQLField("instructions", type: .scalar(String.self)),
          GraphQLField("emailTemplate", type: .object(EmailTemplate.selections)),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(toAddress: String? = nil, unsubscribeUrl: String? = nil, unsubscribeMailto: String? = nil, contact: Contact? = nil, jurisdiction: String? = nil, instructions: String? = nil, emailTemplate: EmailTemplate? = nil) {
          self.init(snapshot: ["__typename": "AssistedPayload", "toAddress": toAddress, "unsubscribeUrl": unsubscribeUrl, "unsubscribeMailto": unsubscribeMailto, "contact": contact.flatMap { $0.snapshot }, "jurisdiction": jurisdiction, "instructions": instructions, "emailTemplate": emailTemplate.flatMap { $0.snapshot }])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var toAddress: String? {
          get {
            return snapshot["toAddress"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "toAddress")
          }
        }

        internal var unsubscribeUrl: String? {
          get {
            return snapshot["unsubscribeUrl"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "unsubscribeUrl")
          }
        }

        internal var unsubscribeMailto: String? {
          get {
            return snapshot["unsubscribeMailto"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "unsubscribeMailto")
          }
        }

        internal var contact: Contact? {
          get {
            return (snapshot["contact"] as? Snapshot).flatMap { Contact(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "contact")
          }
        }

        internal var jurisdiction: String? {
          get {
            return snapshot["jurisdiction"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "jurisdiction")
          }
        }

        internal var instructions: String? {
          get {
            return snapshot["instructions"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "instructions")
          }
        }

        internal var emailTemplate: EmailTemplate? {
          get {
            return (snapshot["emailTemplate"] as? Snapshot).flatMap { EmailTemplate(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "emailTemplate")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var assistedPayloadFields: AssistedPayloadFields {
            get {
              return AssistedPayloadFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        internal struct Contact: GraphQLSelectionSet {
          internal static let possibleTypes = ["ActionContact"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("phone", type: .scalar(String.self)),
            GraphQLField("address", type: .scalar(String.self)),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(email: String? = nil, phone: String? = nil, address: String? = nil) {
            self.init(snapshot: ["__typename": "ActionContact", "email": email, "phone": phone, "address": address])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var email: String? {
            get {
              return snapshot["email"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          internal var phone: String? {
            get {
              return snapshot["phone"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "phone")
            }
          }

          internal var address: String? {
            get {
              return snapshot["address"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "address")
            }
          }
        }

        internal struct EmailTemplate: GraphQLSelectionSet {
          internal static let possibleTypes = ["AssistedEmailTemplate"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("subject", type: .scalar(String.self)),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(subject: String? = nil, body: String) {
            self.init(snapshot: ["__typename": "AssistedEmailTemplate", "subject": subject, "body": body])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var subject: String? {
            get {
              return snapshot["subject"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "subject")
            }
          }

          internal var body: String {
            get {
              return snapshot["body"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "body")
            }
          }
        }
      }
    }
  }
}

internal final class ListVirtualPresencesQuery: GraphQLQuery {
  internal static let operationString =
    "query ListVirtualPresences($input: ListVirtualPresencesInput) {\n  listVirtualPresences(input: $input) {\n    __typename\n    items {\n      __typename\n      ...VirtualPresenceFields\n    }\n    nextToken\n  }\n}"

  internal static var requestString: String { return operationString.appending(VirtualPresenceFields.fragmentString) }

  internal var input: ListVirtualPresencesInput?

  internal init(input: ListVirtualPresencesInput? = nil) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("listVirtualPresences", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(ListVirtualPresence.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(listVirtualPresences: ListVirtualPresence) {
      self.init(snapshot: ["__typename": "Query", "listVirtualPresences": listVirtualPresences.snapshot])
    }

    /// List virtual presences for the authenticated user
    internal var listVirtualPresences: ListVirtualPresence {
      get {
        return ListVirtualPresence(snapshot: snapshot["listVirtualPresences"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "listVirtualPresences")
      }
    }

    internal struct ListVirtualPresence: GraphQLSelectionSet {
      internal static let possibleTypes = ["VirtualPresenceConnection"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(items: [Item], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "VirtualPresenceConnection", "items": items.map { $0.snapshot }, "nextToken": nextToken])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var items: [Item] {
        get {
          return (snapshot["items"] as! [Snapshot]).map { Item(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "items")
        }
      }

      internal var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      internal struct Item: GraphQLSelectionSet {
        internal static let possibleTypes = ["VirtualPresence"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("providerType", type: .nonNull(.scalar(ProviderType.self))),
          GraphQLField("identifier", type: .nonNull(.scalar(String.self))),
          GraphQLField("state", type: .nonNull(.scalar(VirtualPresenceState.self))),
          GraphQLField("relationshipProvider", type: .scalar(RelationshipProvider.self)),
          GraphQLField("lastScannedAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(id: GraphQLID, providerType: ProviderType, identifier: String, state: VirtualPresenceState, relationshipProvider: RelationshipProvider? = nil, lastScannedAtEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
          self.init(snapshot: ["__typename": "VirtualPresence", "id": id, "providerType": providerType, "identifier": identifier, "state": state, "relationshipProvider": relationshipProvider, "lastScannedAtEpochMs": lastScannedAtEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        internal var providerType: ProviderType {
          get {
            return snapshot["providerType"]! as! ProviderType
          }
          set {
            snapshot.updateValue(newValue, forKey: "providerType")
          }
        }

        internal var identifier: String {
          get {
            return snapshot["identifier"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "identifier")
          }
        }

        internal var state: VirtualPresenceState {
          get {
            return snapshot["state"]! as! VirtualPresenceState
          }
          set {
            snapshot.updateValue(newValue, forKey: "state")
          }
        }

        internal var relationshipProvider: RelationshipProvider? {
          get {
            return snapshot["relationshipProvider"] as? RelationshipProvider
          }
          set {
            snapshot.updateValue(newValue, forKey: "relationshipProvider")
          }
        }

        internal var lastScannedAtEpochMs: Double {
          get {
            return snapshot["lastScannedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastScannedAtEpochMs")
          }
        }

        internal var owner: GraphQLID {
          get {
            return snapshot["owner"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        internal var version: Int {
          get {
            return snapshot["version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        internal var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        internal var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var virtualPresenceFields: VirtualPresenceFields {
            get {
              return VirtualPresenceFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class GetDataHolderQuery: GraphQLQuery {
  internal static let operationString =
    "query GetDataHolder($id: ID!) {\n  getDataHolder(id: $id) {\n    __typename\n    ...DataHolderFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(DataHolderFields.fragmentString) }

  internal var id: GraphQLID

  internal init(id: GraphQLID) {
    self.id = id
  }

  internal var variables: GraphQLMap? {
    return ["id": id]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("getDataHolder", arguments: ["id": GraphQLVariable("id")], type: .object(GetDataHolder.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(getDataHolder: GetDataHolder? = nil) {
      self.init(snapshot: ["__typename": "Query", "getDataHolder": getDataHolder.flatMap { $0.snapshot }])
    }

    /// Get a single data holder by ID
    internal var getDataHolder: GetDataHolder? {
      get {
        return (snapshot["getDataHolder"] as? Snapshot).flatMap { GetDataHolder(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getDataHolder")
      }
    }

    internal struct GetDataHolder: GraphQLSelectionSet {
      internal static let possibleTypes = ["DataHolder"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("domainName", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("protectionState", type: .nonNull(.scalar(DataHolderProtectionState.self))),
        GraphQLField("complianceConcern", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("mostRecentInteractionEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(id: GraphQLID, virtualPresenceId: GraphQLID, domainName: String, name: String, protectionState: DataHolderProtectionState, complianceConcern: Bool, mostRecentInteractionEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
        self.init(snapshot: ["__typename": "DataHolder", "id": id, "virtualPresenceId": virtualPresenceId, "domainName": domainName, "name": name, "protectionState": protectionState, "complianceConcern": complianceConcern, "mostRecentInteractionEpochMs": mostRecentInteractionEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      internal var virtualPresenceId: GraphQLID {
        get {
          return snapshot["virtualPresenceId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "virtualPresenceId")
        }
      }

      internal var domainName: String {
        get {
          return snapshot["domainName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "domainName")
        }
      }

      internal var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      internal var protectionState: DataHolderProtectionState {
        get {
          return snapshot["protectionState"]! as! DataHolderProtectionState
        }
        set {
          snapshot.updateValue(newValue, forKey: "protectionState")
        }
      }

      internal var complianceConcern: Bool {
        get {
          return snapshot["complianceConcern"]! as! Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "complianceConcern")
        }
      }

      internal var mostRecentInteractionEpochMs: Double {
        get {
          return snapshot["mostRecentInteractionEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "mostRecentInteractionEpochMs")
        }
      }

      internal var owner: GraphQLID {
        get {
          return snapshot["owner"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var dataHolderFields: DataHolderFields {
          get {
            return DataHolderFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

internal final class ListDataHoldersQuery: GraphQLQuery {
  internal static let operationString =
    "query ListDataHolders($virtualPresenceId: ID!, $limit: Int, $nextToken: String) {\n  listDataHolders(virtualPresenceId: $virtualPresenceId, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      ...DataHolderFields\n    }\n    nextToken\n  }\n}"

  internal static var requestString: String { return operationString.appending(DataHolderFields.fragmentString) }

  internal var virtualPresenceId: GraphQLID
  internal var limit: Int?
  internal var nextToken: String?

  internal init(virtualPresenceId: GraphQLID, limit: Int? = nil, nextToken: String? = nil) {
    self.virtualPresenceId = virtualPresenceId
    self.limit = limit
    self.nextToken = nextToken
  }

  internal var variables: GraphQLMap? {
    return ["virtualPresenceId": virtualPresenceId, "limit": limit, "nextToken": nextToken]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("listDataHolders", arguments: ["virtualPresenceId": GraphQLVariable("virtualPresenceId"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(ListDataHolder.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(listDataHolders: ListDataHolder) {
      self.init(snapshot: ["__typename": "Query", "listDataHolders": listDataHolders.snapshot])
    }

    /// List data holders by virtual presence
    internal var listDataHolders: ListDataHolder {
      get {
        return ListDataHolder(snapshot: snapshot["listDataHolders"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "listDataHolders")
      }
    }

    internal struct ListDataHolder: GraphQLSelectionSet {
      internal static let possibleTypes = ["DataHolderConnection"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(items: [Item], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "DataHolderConnection", "items": items.map { $0.snapshot }, "nextToken": nextToken])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var items: [Item] {
        get {
          return (snapshot["items"] as! [Snapshot]).map { Item(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "items")
        }
      }

      internal var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      internal struct Item: GraphQLSelectionSet {
        internal static let possibleTypes = ["DataHolder"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("domainName", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("protectionState", type: .nonNull(.scalar(DataHolderProtectionState.self))),
          GraphQLField("complianceConcern", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("mostRecentInteractionEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(id: GraphQLID, virtualPresenceId: GraphQLID, domainName: String, name: String, protectionState: DataHolderProtectionState, complianceConcern: Bool, mostRecentInteractionEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
          self.init(snapshot: ["__typename": "DataHolder", "id": id, "virtualPresenceId": virtualPresenceId, "domainName": domainName, "name": name, "protectionState": protectionState, "complianceConcern": complianceConcern, "mostRecentInteractionEpochMs": mostRecentInteractionEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        internal var virtualPresenceId: GraphQLID {
          get {
            return snapshot["virtualPresenceId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "virtualPresenceId")
          }
        }

        internal var domainName: String {
          get {
            return snapshot["domainName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "domainName")
          }
        }

        internal var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        internal var protectionState: DataHolderProtectionState {
          get {
            return snapshot["protectionState"]! as! DataHolderProtectionState
          }
          set {
            snapshot.updateValue(newValue, forKey: "protectionState")
          }
        }

        internal var complianceConcern: Bool {
          get {
            return snapshot["complianceConcern"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "complianceConcern")
          }
        }

        internal var mostRecentInteractionEpochMs: Double {
          get {
            return snapshot["mostRecentInteractionEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "mostRecentInteractionEpochMs")
          }
        }

        internal var owner: GraphQLID {
          get {
            return snapshot["owner"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        internal var version: Int {
          get {
            return snapshot["version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        internal var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        internal var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var dataHolderFields: DataHolderFields {
            get {
              return DataHolderFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class ListDataHolderScanSummariesQuery: GraphQLQuery {
  internal static let operationString =
    "query ListDataHolderScanSummaries($dataHolderId: ID!, $limit: Int, $nextToken: String) {\n  listDataHolderScanSummaries(dataHolderId: $dataHolderId, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      ...DataHolderScanSummaryFields\n    }\n    nextToken\n  }\n}"

  internal static var requestString: String { return operationString.appending(DataHolderScanSummaryFields.fragmentString) }

  internal var dataHolderId: GraphQLID
  internal var limit: Int?
  internal var nextToken: String?

  internal init(dataHolderId: GraphQLID, limit: Int? = nil, nextToken: String? = nil) {
    self.dataHolderId = dataHolderId
    self.limit = limit
    self.nextToken = nextToken
  }

  internal var variables: GraphQLMap? {
    return ["dataHolderId": dataHolderId, "limit": limit, "nextToken": nextToken]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("listDataHolderScanSummaries", arguments: ["dataHolderId": GraphQLVariable("dataHolderId"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(ListDataHolderScanSummary.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(listDataHolderScanSummaries: ListDataHolderScanSummary) {
      self.init(snapshot: ["__typename": "Query", "listDataHolderScanSummaries": listDataHolderScanSummaries.snapshot])
    }

    /// List scan summaries for a data holder (most recent first)
    internal var listDataHolderScanSummaries: ListDataHolderScanSummary {
      get {
        return ListDataHolderScanSummary(snapshot: snapshot["listDataHolderScanSummaries"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "listDataHolderScanSummaries")
      }
    }

    internal struct ListDataHolderScanSummary: GraphQLSelectionSet {
      internal static let possibleTypes = ["DataHolderScanSummaryConnection"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(items: [Item], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "DataHolderScanSummaryConnection", "items": items.map { $0.snapshot }, "nextToken": nextToken])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var items: [Item] {
        get {
          return (snapshot["items"] as! [Snapshot]).map { Item(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "items")
        }
      }

      internal var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      internal struct Item: GraphQLSelectionSet {
        internal static let possibleTypes = ["DataHolderScanSummary"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("dataHolderId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("scannedAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("scanRangeFromEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("scanRangeToEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("emailCount", type: .nonNull(.scalar(Int.self))),
          GraphQLField("readCount", type: .nonNull(.scalar(Int.self))),
          GraphQLField("readRate", type: .nonNull(.scalar(Double.self))),
          GraphQLField("marketingEmailCount", type: .nonNull(.scalar(Int.self))),
          GraphQLField("marketingEmailOpened", type: .nonNull(.scalar(Int.self))),
          GraphQLField("marketingOpenRate", type: .nonNull(.scalar(Double.self))),
          GraphQLField("categoryBreakdown", type: .nonNull(.scalar(String.self))),
          GraphQLField("uncategorizedCount", type: .nonNull(.scalar(Int.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(dataHolderId: GraphQLID, owner: GraphQLID, scannedAtEpochMs: Double, scanRangeFromEpochMs: Double, scanRangeToEpochMs: Double, emailCount: Int, readCount: Int, readRate: Double, marketingEmailCount: Int, marketingEmailOpened: Int, marketingOpenRate: Double, categoryBreakdown: String, uncategorizedCount: Int) {
          self.init(snapshot: ["__typename": "DataHolderScanSummary", "dataHolderId": dataHolderId, "owner": owner, "scannedAtEpochMs": scannedAtEpochMs, "scanRangeFromEpochMs": scanRangeFromEpochMs, "scanRangeToEpochMs": scanRangeToEpochMs, "emailCount": emailCount, "readCount": readCount, "readRate": readRate, "marketingEmailCount": marketingEmailCount, "marketingEmailOpened": marketingEmailOpened, "marketingOpenRate": marketingOpenRate, "categoryBreakdown": categoryBreakdown, "uncategorizedCount": uncategorizedCount])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var dataHolderId: GraphQLID {
          get {
            return snapshot["dataHolderId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "dataHolderId")
          }
        }

        internal var owner: GraphQLID {
          get {
            return snapshot["owner"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        internal var scannedAtEpochMs: Double {
          get {
            return snapshot["scannedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "scannedAtEpochMs")
          }
        }

        internal var scanRangeFromEpochMs: Double {
          get {
            return snapshot["scanRangeFromEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "scanRangeFromEpochMs")
          }
        }

        internal var scanRangeToEpochMs: Double {
          get {
            return snapshot["scanRangeToEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "scanRangeToEpochMs")
          }
        }

        internal var emailCount: Int {
          get {
            return snapshot["emailCount"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "emailCount")
          }
        }

        internal var readCount: Int {
          get {
            return snapshot["readCount"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "readCount")
          }
        }

        internal var readRate: Double {
          get {
            return snapshot["readRate"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "readRate")
          }
        }

        internal var marketingEmailCount: Int {
          get {
            return snapshot["marketingEmailCount"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "marketingEmailCount")
          }
        }

        internal var marketingEmailOpened: Int {
          get {
            return snapshot["marketingEmailOpened"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "marketingEmailOpened")
          }
        }

        internal var marketingOpenRate: Double {
          get {
            return snapshot["marketingOpenRate"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "marketingOpenRate")
          }
        }

        internal var categoryBreakdown: String {
          get {
            return snapshot["categoryBreakdown"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "categoryBreakdown")
          }
        }

        internal var uncategorizedCount: Int {
          get {
            return snapshot["uncategorizedCount"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "uncategorizedCount")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var dataHolderScanSummaryFields: DataHolderScanSummaryFields {
            get {
              return DataHolderScanSummaryFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class GetAnalysisResultQuery: GraphQLQuery {
  internal static let operationString =
    "query GetAnalysisResult($id: ID!) {\n  getAnalysisResult(id: $id) {\n    __typename\n    ...AnalysisResultFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(AnalysisResultFields.fragmentString).appending(AnalysisResultDataFields.fragmentString) }

  internal var id: GraphQLID

  internal init(id: GraphQLID) {
    self.id = id
  }

  internal var variables: GraphQLMap? {
    return ["id": id]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("getAnalysisResult", arguments: ["id": GraphQLVariable("id")], type: .object(GetAnalysisResult.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(getAnalysisResult: GetAnalysisResult? = nil) {
      self.init(snapshot: ["__typename": "Query", "getAnalysisResult": getAnalysisResult.flatMap { $0.snapshot }])
    }

    /// Get a full analysis result by ID, including typed data.
    internal var getAnalysisResult: GetAnalysisResult? {
      get {
        return (snapshot["getAnalysisResult"] as? Snapshot).flatMap { GetAnalysisResult(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getAnalysisResult")
      }
    }

    internal struct GetAnalysisResult: GraphQLSelectionSet {
      internal static let possibleTypes = ["AnalysisResult"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("dataHolderIdentifier", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(AnalysisResultStatus.self))),
        GraphQLField("lastAnalyzedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("data", type: .object(Datum.selections)),
        GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(id: GraphQLID, virtualPresenceId: GraphQLID, dataHolderIdentifier: String, status: AnalysisResultStatus, lastAnalyzedAtEpochMs: Double, data: Datum? = nil, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
        self.init(snapshot: ["__typename": "AnalysisResult", "id": id, "virtualPresenceId": virtualPresenceId, "dataHolderIdentifier": dataHolderIdentifier, "status": status, "lastAnalyzedAtEpochMs": lastAnalyzedAtEpochMs, "data": data.flatMap { $0.snapshot }, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      internal var virtualPresenceId: GraphQLID {
        get {
          return snapshot["virtualPresenceId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "virtualPresenceId")
        }
      }

      internal var dataHolderIdentifier: String {
        get {
          return snapshot["dataHolderIdentifier"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dataHolderIdentifier")
        }
      }

      internal var status: AnalysisResultStatus {
        get {
          return snapshot["status"]! as! AnalysisResultStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      internal var lastAnalyzedAtEpochMs: Double {
        get {
          return snapshot["lastAnalyzedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastAnalyzedAtEpochMs")
        }
      }

      internal var data: Datum? {
        get {
          return (snapshot["data"] as? Snapshot).flatMap { Datum(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "data")
        }
      }

      internal var owner: GraphQLID {
        get {
          return snapshot["owner"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var analysisResultFields: AnalysisResultFields {
          get {
            return AnalysisResultFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Datum: GraphQLSelectionSet {
        internal static let possibleTypes = ["AnalysisResultData"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("privacyScore", type: .object(PrivacyScore.selections)),
          GraphQLField("privacySummary", type: .nonNull(.object(PrivacySummary.selections))),
          GraphQLField("categories", type: .nonNull(.list(.nonNull(.object(Category.selections))))),
          GraphQLField("capabilities", type: .nonNull(.object(Capability.selections))),
          GraphQLField("riskIndicators", type: .nonNull(.object(RiskIndicator.selections))),
          GraphQLField("organizationIdentity", type: .object(OrganizationIdentity.selections)),
          GraphQLField("attribution", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(privacyScore: PrivacyScore? = nil, privacySummary: PrivacySummary, categories: [Category], capabilities: Capability, riskIndicators: RiskIndicator, organizationIdentity: OrganizationIdentity? = nil, attribution: [String]) {
          self.init(snapshot: ["__typename": "AnalysisResultData", "privacyScore": privacyScore.flatMap { $0.snapshot }, "privacySummary": privacySummary.snapshot, "categories": categories.map { $0.snapshot }, "capabilities": capabilities.snapshot, "riskIndicators": riskIndicators.snapshot, "organizationIdentity": organizationIdentity.flatMap { $0.snapshot }, "attribution": attribution])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var privacyScore: PrivacyScore? {
          get {
            return (snapshot["privacyScore"] as? Snapshot).flatMap { PrivacyScore(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "privacyScore")
          }
        }

        internal var privacySummary: PrivacySummary {
          get {
            return PrivacySummary(snapshot: snapshot["privacySummary"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "privacySummary")
          }
        }

        internal var categories: [Category] {
          get {
            return (snapshot["categories"] as! [Snapshot]).map { Category(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "categories")
          }
        }

        internal var capabilities: Capability {
          get {
            return Capability(snapshot: snapshot["capabilities"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "capabilities")
          }
        }

        internal var riskIndicators: RiskIndicator {
          get {
            return RiskIndicator(snapshot: snapshot["riskIndicators"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "riskIndicators")
          }
        }

        internal var organizationIdentity: OrganizationIdentity? {
          get {
            return (snapshot["organizationIdentity"] as? Snapshot).flatMap { OrganizationIdentity(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "organizationIdentity")
          }
        }

        internal var attribution: [String] {
          get {
            return snapshot["attribution"]! as! [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "attribution")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var analysisResultDataFields: AnalysisResultDataFields {
            get {
              return AnalysisResultDataFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        internal struct PrivacyScore: GraphQLSelectionSet {
          internal static let possibleTypes = ["PrivacyScore"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("score", type: .nonNull(.scalar(Double.self))),
            GraphQLField("breakdown", type: .nonNull(.list(.nonNull(.object(Breakdown.selections))))),
            GraphQLField("coverage", type: .nonNull(.object(Coverage.selections))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(score: Double, breakdown: [Breakdown], coverage: Coverage) {
            self.init(snapshot: ["__typename": "PrivacyScore", "score": score, "breakdown": breakdown.map { $0.snapshot }, "coverage": coverage.snapshot])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var score: Double {
            get {
              return snapshot["score"]! as! Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "score")
            }
          }

          internal var breakdown: [Breakdown] {
            get {
              return (snapshot["breakdown"] as! [Snapshot]).map { Breakdown(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "breakdown")
            }
          }

          internal var coverage: Coverage {
            get {
              return Coverage(snapshot: snapshot["coverage"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "coverage")
            }
          }

          internal struct Breakdown: GraphQLSelectionSet {
            internal static let possibleTypes = ["ScoreContribution"]

            internal static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("aspect", type: .nonNull(.scalar(String.self))),
              GraphQLField("contribution", type: .nonNull(.scalar(Double.self))),
            ]

            internal var snapshot: Snapshot

            internal init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            internal init(aspect: String, contribution: Double) {
              self.init(snapshot: ["__typename": "ScoreContribution", "aspect": aspect, "contribution": contribution])
            }

            internal var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            internal var aspect: String {
              get {
                return snapshot["aspect"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "aspect")
              }
            }

            internal var contribution: Double {
              get {
                return snapshot["contribution"]! as! Double
              }
              set {
                snapshot.updateValue(newValue, forKey: "contribution")
              }
            }
          }

          internal struct Coverage: GraphQLSelectionSet {
            internal static let possibleTypes = ["ScoreCoverage"]

            internal static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("evaluated", type: .nonNull(.scalar(Int.self))),
              GraphQLField("total", type: .nonNull(.scalar(Int.self))),
            ]

            internal var snapshot: Snapshot

            internal init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            internal init(evaluated: Int, total: Int) {
              self.init(snapshot: ["__typename": "ScoreCoverage", "evaluated": evaluated, "total": total])
            }

            internal var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            internal var evaluated: Int {
              get {
                return snapshot["evaluated"]! as! Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "evaluated")
              }
            }

            internal var total: Int {
              get {
                return snapshot["total"]! as! Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "total")
              }
            }
          }
        }

        internal struct PrivacySummary: GraphQLSelectionSet {
          internal static let possibleTypes = ["PrivacySummary"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("bulletPoints", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
            GraphQLField("sourceUrl", type: .nonNull(.scalar(String.self))),
            GraphQLField("sourceLastUpdated", type: .scalar(String.self)),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(bulletPoints: [String], sourceUrl: String, sourceLastUpdated: String? = nil) {
            self.init(snapshot: ["__typename": "PrivacySummary", "bulletPoints": bulletPoints, "sourceUrl": sourceUrl, "sourceLastUpdated": sourceLastUpdated])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var bulletPoints: [String] {
            get {
              return snapshot["bulletPoints"]! as! [String]
            }
            set {
              snapshot.updateValue(newValue, forKey: "bulletPoints")
            }
          }

          internal var sourceUrl: String {
            get {
              return snapshot["sourceUrl"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sourceUrl")
            }
          }

          internal var sourceLastUpdated: String? {
            get {
              return snapshot["sourceLastUpdated"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sourceLastUpdated")
            }
          }
        }

        internal struct Category: GraphQLSelectionSet {
          internal static let possibleTypes = ["CategorySignals"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("category", type: .nonNull(.scalar(DataCategory.self))),
            GraphQLField("collected", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("dataLabels", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
            GraphQLField("sharedWithThirdParties", type: .nonNull(.scalar(ShareStyle.self))),
            GraphQLField("monetized", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("retained", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("retention", type: .object(Retention.selections)),
            GraphQLField("userCanOptOut", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("requiredForService", type: .scalar(SignalValue.self)),
            GraphQLField("requiredForLaw", type: .scalar(SignalValue.self)),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(category: DataCategory, collected: SignalValue, dataLabels: [String], sharedWithThirdParties: ShareStyle, monetized: SignalValue, retained: SignalValue, retention: Retention? = nil, userCanOptOut: SignalValue, requiredForService: SignalValue? = nil, requiredForLaw: SignalValue? = nil) {
            self.init(snapshot: ["__typename": "CategorySignals", "category": category, "collected": collected, "dataLabels": dataLabels, "sharedWithThirdParties": sharedWithThirdParties, "monetized": monetized, "retained": retained, "retention": retention.flatMap { $0.snapshot }, "userCanOptOut": userCanOptOut, "requiredForService": requiredForService, "requiredForLaw": requiredForLaw])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var category: DataCategory {
            get {
              return snapshot["category"]! as! DataCategory
            }
            set {
              snapshot.updateValue(newValue, forKey: "category")
            }
          }

          internal var collected: SignalValue {
            get {
              return snapshot["collected"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "collected")
            }
          }

          internal var dataLabels: [String] {
            get {
              return snapshot["dataLabels"]! as! [String]
            }
            set {
              snapshot.updateValue(newValue, forKey: "dataLabels")
            }
          }

          internal var sharedWithThirdParties: ShareStyle {
            get {
              return snapshot["sharedWithThirdParties"]! as! ShareStyle
            }
            set {
              snapshot.updateValue(newValue, forKey: "sharedWithThirdParties")
            }
          }

          internal var monetized: SignalValue {
            get {
              return snapshot["monetized"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "monetized")
            }
          }

          internal var retained: SignalValue {
            get {
              return snapshot["retained"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "retained")
            }
          }

          internal var retention: Retention? {
            get {
              return (snapshot["retention"] as? Snapshot).flatMap { Retention(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "retention")
            }
          }

          internal var userCanOptOut: SignalValue {
            get {
              return snapshot["userCanOptOut"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "userCanOptOut")
            }
          }

          internal var requiredForService: SignalValue? {
            get {
              return snapshot["requiredForService"] as? SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "requiredForService")
            }
          }

          internal var requiredForLaw: SignalValue? {
            get {
              return snapshot["requiredForLaw"] as? SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "requiredForLaw")
            }
          }

          internal struct Retention: GraphQLSelectionSet {
            internal static let possibleTypes = ["RetentionInfo"]

            internal static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("style", type: .nonNull(.scalar(RetentionStyle.self))),
              GraphQLField("timeInDays", type: .scalar(Int.self)),
              GraphQLField("additionalInfo", type: .scalar(String.self)),
            ]

            internal var snapshot: Snapshot

            internal init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            internal init(style: RetentionStyle, timeInDays: Int? = nil, additionalInfo: String? = nil) {
              self.init(snapshot: ["__typename": "RetentionInfo", "style": style, "timeInDays": timeInDays, "additionalInfo": additionalInfo])
            }

            internal var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            internal var style: RetentionStyle {
              get {
                return snapshot["style"]! as! RetentionStyle
              }
              set {
                snapshot.updateValue(newValue, forKey: "style")
              }
            }

            internal var timeInDays: Int? {
              get {
                return snapshot["timeInDays"] as? Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "timeInDays")
              }
            }

            internal var additionalInfo: String? {
              get {
                return snapshot["additionalInfo"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "additionalInfo")
              }
            }
          }
        }

        internal struct Capability: GraphQLSelectionSet {
          internal static let possibleTypes = ["CapabilitySignals"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("supportsAccountCreation", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("supportsAccountDeletion", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("supportsDataDeletionRequests", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("supportsDataExport", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("supportsSubscriptions", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("sellsPersonalInformation", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("usesCookiesOrTracking", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("supportsTwoFactorAuth", type: .nonNull(.scalar(SignalValue.self))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(supportsAccountCreation: SignalValue, supportsAccountDeletion: SignalValue, supportsDataDeletionRequests: SignalValue, supportsDataExport: SignalValue, supportsSubscriptions: SignalValue, sellsPersonalInformation: SignalValue, usesCookiesOrTracking: SignalValue, supportsTwoFactorAuth: SignalValue) {
            self.init(snapshot: ["__typename": "CapabilitySignals", "supportsAccountCreation": supportsAccountCreation, "supportsAccountDeletion": supportsAccountDeletion, "supportsDataDeletionRequests": supportsDataDeletionRequests, "supportsDataExport": supportsDataExport, "supportsSubscriptions": supportsSubscriptions, "sellsPersonalInformation": sellsPersonalInformation, "usesCookiesOrTracking": usesCookiesOrTracking, "supportsTwoFactorAuth": supportsTwoFactorAuth])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var supportsAccountCreation: SignalValue {
            get {
              return snapshot["supportsAccountCreation"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "supportsAccountCreation")
            }
          }

          internal var supportsAccountDeletion: SignalValue {
            get {
              return snapshot["supportsAccountDeletion"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "supportsAccountDeletion")
            }
          }

          internal var supportsDataDeletionRequests: SignalValue {
            get {
              return snapshot["supportsDataDeletionRequests"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "supportsDataDeletionRequests")
            }
          }

          internal var supportsDataExport: SignalValue {
            get {
              return snapshot["supportsDataExport"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "supportsDataExport")
            }
          }

          internal var supportsSubscriptions: SignalValue {
            get {
              return snapshot["supportsSubscriptions"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "supportsSubscriptions")
            }
          }

          internal var sellsPersonalInformation: SignalValue {
            get {
              return snapshot["sellsPersonalInformation"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "sellsPersonalInformation")
            }
          }

          internal var usesCookiesOrTracking: SignalValue {
            get {
              return snapshot["usesCookiesOrTracking"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "usesCookiesOrTracking")
            }
          }

          internal var supportsTwoFactorAuth: SignalValue {
            get {
              return snapshot["supportsTwoFactorAuth"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "supportsTwoFactorAuth")
            }
          }
        }

        internal struct RiskIndicator: GraphQLSelectionSet {
          internal static let possibleTypes = ["RiskIndicators"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("dataCollectionBreadth", type: .nonNull(.scalar(Int.self))),
            GraphQLField("collectsSensitiveDataForNonEssentialPurposes", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("sellsPersonalInformation", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("maxRetentionDays", type: .scalar(Int.self)),
            GraphQLField("hasIndefiniteRetention", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("encryptionPractices", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("breachRisk", type: .nonNull(.scalar(SignalValue.self))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(dataCollectionBreadth: Int, collectsSensitiveDataForNonEssentialPurposes: SignalValue, sellsPersonalInformation: SignalValue, maxRetentionDays: Int? = nil, hasIndefiniteRetention: SignalValue, encryptionPractices: SignalValue, breachRisk: SignalValue) {
            self.init(snapshot: ["__typename": "RiskIndicators", "dataCollectionBreadth": dataCollectionBreadth, "collectsSensitiveDataForNonEssentialPurposes": collectsSensitiveDataForNonEssentialPurposes, "sellsPersonalInformation": sellsPersonalInformation, "maxRetentionDays": maxRetentionDays, "hasIndefiniteRetention": hasIndefiniteRetention, "encryptionPractices": encryptionPractices, "breachRisk": breachRisk])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var dataCollectionBreadth: Int {
            get {
              return snapshot["dataCollectionBreadth"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "dataCollectionBreadth")
            }
          }

          internal var collectsSensitiveDataForNonEssentialPurposes: SignalValue {
            get {
              return snapshot["collectsSensitiveDataForNonEssentialPurposes"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "collectsSensitiveDataForNonEssentialPurposes")
            }
          }

          internal var sellsPersonalInformation: SignalValue {
            get {
              return snapshot["sellsPersonalInformation"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "sellsPersonalInformation")
            }
          }

          internal var maxRetentionDays: Int? {
            get {
              return snapshot["maxRetentionDays"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "maxRetentionDays")
            }
          }

          internal var hasIndefiniteRetention: SignalValue {
            get {
              return snapshot["hasIndefiniteRetention"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "hasIndefiniteRetention")
            }
          }

          internal var encryptionPractices: SignalValue {
            get {
              return snapshot["encryptionPractices"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "encryptionPractices")
            }
          }

          internal var breachRisk: SignalValue {
            get {
              return snapshot["breachRisk"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "breachRisk")
            }
          }
        }

        internal struct OrganizationIdentity: GraphQLSelectionSet {
          internal static let possibleTypes = ["OrganizationIdentity"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("brandName", type: .scalar(String.self)),
            GraphQLField("companyName", type: .scalar(String.self)),
            GraphQLField("primaryCategory", type: .scalar(OrganizationCategory.self)),
            GraphQLField("categories", type: .nonNull(.list(.nonNull(.scalar(OrganizationCategory.self))))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(brandName: String? = nil, companyName: String? = nil, primaryCategory: OrganizationCategory? = nil, categories: [OrganizationCategory]) {
            self.init(snapshot: ["__typename": "OrganizationIdentity", "brandName": brandName, "companyName": companyName, "primaryCategory": primaryCategory, "categories": categories])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var brandName: String? {
            get {
              return snapshot["brandName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "brandName")
            }
          }

          internal var companyName: String? {
            get {
              return snapshot["companyName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "companyName")
            }
          }

          internal var primaryCategory: OrganizationCategory? {
            get {
              return snapshot["primaryCategory"] as? OrganizationCategory
            }
            set {
              snapshot.updateValue(newValue, forKey: "primaryCategory")
            }
          }

          internal var categories: [OrganizationCategory] {
            get {
              return snapshot["categories"]! as! [OrganizationCategory]
            }
            set {
              snapshot.updateValue(newValue, forKey: "categories")
            }
          }
        }
      }
    }
  }
}

internal final class ListAnalysisResultsQuery: GraphQLQuery {
  internal static let operationString =
    "query ListAnalysisResults($virtualPresenceId: ID!, $limit: Int, $nextToken: String) {\n  listAnalysisResults(virtualPresenceId: $virtualPresenceId, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      ...AnalysisResultFields\n    }\n    nextToken\n  }\n}"

  internal static var requestString: String { return operationString.appending(AnalysisResultFields.fragmentString).appending(AnalysisResultDataFields.fragmentString) }

  internal var virtualPresenceId: GraphQLID
  internal var limit: Int?
  internal var nextToken: String?

  internal init(virtualPresenceId: GraphQLID, limit: Int? = nil, nextToken: String? = nil) {
    self.virtualPresenceId = virtualPresenceId
    self.limit = limit
    self.nextToken = nextToken
  }

  internal var variables: GraphQLMap? {
    return ["virtualPresenceId": virtualPresenceId, "limit": limit, "nextToken": nextToken]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("listAnalysisResults", arguments: ["virtualPresenceId": GraphQLVariable("virtualPresenceId"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(ListAnalysisResult.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(listAnalysisResults: ListAnalysisResult) {
      self.init(snapshot: ["__typename": "Query", "listAnalysisResults": listAnalysisResults.snapshot])
    }

    /// List analysis results for a virtual presence
    internal var listAnalysisResults: ListAnalysisResult {
      get {
        return ListAnalysisResult(snapshot: snapshot["listAnalysisResults"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "listAnalysisResults")
      }
    }

    internal struct ListAnalysisResult: GraphQLSelectionSet {
      internal static let possibleTypes = ["AnalysisResultConnection"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(items: [Item], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "AnalysisResultConnection", "items": items.map { $0.snapshot }, "nextToken": nextToken])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var items: [Item] {
        get {
          return (snapshot["items"] as! [Snapshot]).map { Item(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "items")
        }
      }

      internal var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      internal struct Item: GraphQLSelectionSet {
        internal static let possibleTypes = ["AnalysisResult"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("dataHolderIdentifier", type: .nonNull(.scalar(String.self))),
          GraphQLField("status", type: .nonNull(.scalar(AnalysisResultStatus.self))),
          GraphQLField("lastAnalyzedAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("data", type: .object(Datum.selections)),
          GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(id: GraphQLID, virtualPresenceId: GraphQLID, dataHolderIdentifier: String, status: AnalysisResultStatus, lastAnalyzedAtEpochMs: Double, data: Datum? = nil, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
          self.init(snapshot: ["__typename": "AnalysisResult", "id": id, "virtualPresenceId": virtualPresenceId, "dataHolderIdentifier": dataHolderIdentifier, "status": status, "lastAnalyzedAtEpochMs": lastAnalyzedAtEpochMs, "data": data.flatMap { $0.snapshot }, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        internal var virtualPresenceId: GraphQLID {
          get {
            return snapshot["virtualPresenceId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "virtualPresenceId")
          }
        }

        internal var dataHolderIdentifier: String {
          get {
            return snapshot["dataHolderIdentifier"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "dataHolderIdentifier")
          }
        }

        internal var status: AnalysisResultStatus {
          get {
            return snapshot["status"]! as! AnalysisResultStatus
          }
          set {
            snapshot.updateValue(newValue, forKey: "status")
          }
        }

        internal var lastAnalyzedAtEpochMs: Double {
          get {
            return snapshot["lastAnalyzedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastAnalyzedAtEpochMs")
          }
        }

        internal var data: Datum? {
          get {
            return (snapshot["data"] as? Snapshot).flatMap { Datum(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "data")
          }
        }

        internal var owner: GraphQLID {
          get {
            return snapshot["owner"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        internal var version: Int {
          get {
            return snapshot["version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        internal var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        internal var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var analysisResultFields: AnalysisResultFields {
            get {
              return AnalysisResultFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        internal struct Datum: GraphQLSelectionSet {
          internal static let possibleTypes = ["AnalysisResultData"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("privacyScore", type: .object(PrivacyScore.selections)),
            GraphQLField("privacySummary", type: .nonNull(.object(PrivacySummary.selections))),
            GraphQLField("categories", type: .nonNull(.list(.nonNull(.object(Category.selections))))),
            GraphQLField("capabilities", type: .nonNull(.object(Capability.selections))),
            GraphQLField("riskIndicators", type: .nonNull(.object(RiskIndicator.selections))),
            GraphQLField("organizationIdentity", type: .object(OrganizationIdentity.selections)),
            GraphQLField("attribution", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(privacyScore: PrivacyScore? = nil, privacySummary: PrivacySummary, categories: [Category], capabilities: Capability, riskIndicators: RiskIndicator, organizationIdentity: OrganizationIdentity? = nil, attribution: [String]) {
            self.init(snapshot: ["__typename": "AnalysisResultData", "privacyScore": privacyScore.flatMap { $0.snapshot }, "privacySummary": privacySummary.snapshot, "categories": categories.map { $0.snapshot }, "capabilities": capabilities.snapshot, "riskIndicators": riskIndicators.snapshot, "organizationIdentity": organizationIdentity.flatMap { $0.snapshot }, "attribution": attribution])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var privacyScore: PrivacyScore? {
            get {
              return (snapshot["privacyScore"] as? Snapshot).flatMap { PrivacyScore(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "privacyScore")
            }
          }

          internal var privacySummary: PrivacySummary {
            get {
              return PrivacySummary(snapshot: snapshot["privacySummary"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "privacySummary")
            }
          }

          internal var categories: [Category] {
            get {
              return (snapshot["categories"] as! [Snapshot]).map { Category(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "categories")
            }
          }

          internal var capabilities: Capability {
            get {
              return Capability(snapshot: snapshot["capabilities"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "capabilities")
            }
          }

          internal var riskIndicators: RiskIndicator {
            get {
              return RiskIndicator(snapshot: snapshot["riskIndicators"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "riskIndicators")
            }
          }

          internal var organizationIdentity: OrganizationIdentity? {
            get {
              return (snapshot["organizationIdentity"] as? Snapshot).flatMap { OrganizationIdentity(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "organizationIdentity")
            }
          }

          internal var attribution: [String] {
            get {
              return snapshot["attribution"]! as! [String]
            }
            set {
              snapshot.updateValue(newValue, forKey: "attribution")
            }
          }

          internal var fragments: Fragments {
            get {
              return Fragments(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }

          internal struct Fragments {
            internal var snapshot: Snapshot

            internal var analysisResultDataFields: AnalysisResultDataFields {
              get {
                return AnalysisResultDataFields(snapshot: snapshot)
              }
              set {
                snapshot += newValue.snapshot
              }
            }
          }

          internal struct PrivacyScore: GraphQLSelectionSet {
            internal static let possibleTypes = ["PrivacyScore"]

            internal static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("score", type: .nonNull(.scalar(Double.self))),
              GraphQLField("breakdown", type: .nonNull(.list(.nonNull(.object(Breakdown.selections))))),
              GraphQLField("coverage", type: .nonNull(.object(Coverage.selections))),
            ]

            internal var snapshot: Snapshot

            internal init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            internal init(score: Double, breakdown: [Breakdown], coverage: Coverage) {
              self.init(snapshot: ["__typename": "PrivacyScore", "score": score, "breakdown": breakdown.map { $0.snapshot }, "coverage": coverage.snapshot])
            }

            internal var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            internal var score: Double {
              get {
                return snapshot["score"]! as! Double
              }
              set {
                snapshot.updateValue(newValue, forKey: "score")
              }
            }

            internal var breakdown: [Breakdown] {
              get {
                return (snapshot["breakdown"] as! [Snapshot]).map { Breakdown(snapshot: $0) }
              }
              set {
                snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "breakdown")
              }
            }

            internal var coverage: Coverage {
              get {
                return Coverage(snapshot: snapshot["coverage"]! as! Snapshot)
              }
              set {
                snapshot.updateValue(newValue.snapshot, forKey: "coverage")
              }
            }

            internal struct Breakdown: GraphQLSelectionSet {
              internal static let possibleTypes = ["ScoreContribution"]

              internal static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("aspect", type: .nonNull(.scalar(String.self))),
                GraphQLField("contribution", type: .nonNull(.scalar(Double.self))),
              ]

              internal var snapshot: Snapshot

              internal init(snapshot: Snapshot) {
                self.snapshot = snapshot
              }

              internal init(aspect: String, contribution: Double) {
                self.init(snapshot: ["__typename": "ScoreContribution", "aspect": aspect, "contribution": contribution])
              }

              internal var __typename: String {
                get {
                  return snapshot["__typename"]! as! String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "__typename")
                }
              }

              internal var aspect: String {
                get {
                  return snapshot["aspect"]! as! String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "aspect")
                }
              }

              internal var contribution: Double {
                get {
                  return snapshot["contribution"]! as! Double
                }
                set {
                  snapshot.updateValue(newValue, forKey: "contribution")
                }
              }
            }

            internal struct Coverage: GraphQLSelectionSet {
              internal static let possibleTypes = ["ScoreCoverage"]

              internal static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("evaluated", type: .nonNull(.scalar(Int.self))),
                GraphQLField("total", type: .nonNull(.scalar(Int.self))),
              ]

              internal var snapshot: Snapshot

              internal init(snapshot: Snapshot) {
                self.snapshot = snapshot
              }

              internal init(evaluated: Int, total: Int) {
                self.init(snapshot: ["__typename": "ScoreCoverage", "evaluated": evaluated, "total": total])
              }

              internal var __typename: String {
                get {
                  return snapshot["__typename"]! as! String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "__typename")
                }
              }

              internal var evaluated: Int {
                get {
                  return snapshot["evaluated"]! as! Int
                }
                set {
                  snapshot.updateValue(newValue, forKey: "evaluated")
                }
              }

              internal var total: Int {
                get {
                  return snapshot["total"]! as! Int
                }
                set {
                  snapshot.updateValue(newValue, forKey: "total")
                }
              }
            }
          }

          internal struct PrivacySummary: GraphQLSelectionSet {
            internal static let possibleTypes = ["PrivacySummary"]

            internal static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("bulletPoints", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("sourceUrl", type: .nonNull(.scalar(String.self))),
              GraphQLField("sourceLastUpdated", type: .scalar(String.self)),
            ]

            internal var snapshot: Snapshot

            internal init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            internal init(bulletPoints: [String], sourceUrl: String, sourceLastUpdated: String? = nil) {
              self.init(snapshot: ["__typename": "PrivacySummary", "bulletPoints": bulletPoints, "sourceUrl": sourceUrl, "sourceLastUpdated": sourceLastUpdated])
            }

            internal var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            internal var bulletPoints: [String] {
              get {
                return snapshot["bulletPoints"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "bulletPoints")
              }
            }

            internal var sourceUrl: String {
              get {
                return snapshot["sourceUrl"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "sourceUrl")
              }
            }

            internal var sourceLastUpdated: String? {
              get {
                return snapshot["sourceLastUpdated"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "sourceLastUpdated")
              }
            }
          }

          internal struct Category: GraphQLSelectionSet {
            internal static let possibleTypes = ["CategorySignals"]

            internal static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("category", type: .nonNull(.scalar(DataCategory.self))),
              GraphQLField("collected", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("dataLabels", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
              GraphQLField("sharedWithThirdParties", type: .nonNull(.scalar(ShareStyle.self))),
              GraphQLField("monetized", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("retained", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("retention", type: .object(Retention.selections)),
              GraphQLField("userCanOptOut", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("requiredForService", type: .scalar(SignalValue.self)),
              GraphQLField("requiredForLaw", type: .scalar(SignalValue.self)),
            ]

            internal var snapshot: Snapshot

            internal init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            internal init(category: DataCategory, collected: SignalValue, dataLabels: [String], sharedWithThirdParties: ShareStyle, monetized: SignalValue, retained: SignalValue, retention: Retention? = nil, userCanOptOut: SignalValue, requiredForService: SignalValue? = nil, requiredForLaw: SignalValue? = nil) {
              self.init(snapshot: ["__typename": "CategorySignals", "category": category, "collected": collected, "dataLabels": dataLabels, "sharedWithThirdParties": sharedWithThirdParties, "monetized": monetized, "retained": retained, "retention": retention.flatMap { $0.snapshot }, "userCanOptOut": userCanOptOut, "requiredForService": requiredForService, "requiredForLaw": requiredForLaw])
            }

            internal var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            internal var category: DataCategory {
              get {
                return snapshot["category"]! as! DataCategory
              }
              set {
                snapshot.updateValue(newValue, forKey: "category")
              }
            }

            internal var collected: SignalValue {
              get {
                return snapshot["collected"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "collected")
              }
            }

            internal var dataLabels: [String] {
              get {
                return snapshot["dataLabels"]! as! [String]
              }
              set {
                snapshot.updateValue(newValue, forKey: "dataLabels")
              }
            }

            internal var sharedWithThirdParties: ShareStyle {
              get {
                return snapshot["sharedWithThirdParties"]! as! ShareStyle
              }
              set {
                snapshot.updateValue(newValue, forKey: "sharedWithThirdParties")
              }
            }

            internal var monetized: SignalValue {
              get {
                return snapshot["monetized"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "monetized")
              }
            }

            internal var retained: SignalValue {
              get {
                return snapshot["retained"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "retained")
              }
            }

            internal var retention: Retention? {
              get {
                return (snapshot["retention"] as? Snapshot).flatMap { Retention(snapshot: $0) }
              }
              set {
                snapshot.updateValue(newValue?.snapshot, forKey: "retention")
              }
            }

            internal var userCanOptOut: SignalValue {
              get {
                return snapshot["userCanOptOut"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "userCanOptOut")
              }
            }

            internal var requiredForService: SignalValue? {
              get {
                return snapshot["requiredForService"] as? SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "requiredForService")
              }
            }

            internal var requiredForLaw: SignalValue? {
              get {
                return snapshot["requiredForLaw"] as? SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "requiredForLaw")
              }
            }

            internal struct Retention: GraphQLSelectionSet {
              internal static let possibleTypes = ["RetentionInfo"]

              internal static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("style", type: .nonNull(.scalar(RetentionStyle.self))),
                GraphQLField("timeInDays", type: .scalar(Int.self)),
                GraphQLField("additionalInfo", type: .scalar(String.self)),
              ]

              internal var snapshot: Snapshot

              internal init(snapshot: Snapshot) {
                self.snapshot = snapshot
              }

              internal init(style: RetentionStyle, timeInDays: Int? = nil, additionalInfo: String? = nil) {
                self.init(snapshot: ["__typename": "RetentionInfo", "style": style, "timeInDays": timeInDays, "additionalInfo": additionalInfo])
              }

              internal var __typename: String {
                get {
                  return snapshot["__typename"]! as! String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "__typename")
                }
              }

              internal var style: RetentionStyle {
                get {
                  return snapshot["style"]! as! RetentionStyle
                }
                set {
                  snapshot.updateValue(newValue, forKey: "style")
                }
              }

              internal var timeInDays: Int? {
                get {
                  return snapshot["timeInDays"] as? Int
                }
                set {
                  snapshot.updateValue(newValue, forKey: "timeInDays")
                }
              }

              internal var additionalInfo: String? {
                get {
                  return snapshot["additionalInfo"] as? String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "additionalInfo")
                }
              }
            }
          }

          internal struct Capability: GraphQLSelectionSet {
            internal static let possibleTypes = ["CapabilitySignals"]

            internal static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("supportsAccountCreation", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("supportsAccountDeletion", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("supportsDataDeletionRequests", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("supportsDataExport", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("supportsSubscriptions", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("sellsPersonalInformation", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("usesCookiesOrTracking", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("supportsTwoFactorAuth", type: .nonNull(.scalar(SignalValue.self))),
            ]

            internal var snapshot: Snapshot

            internal init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            internal init(supportsAccountCreation: SignalValue, supportsAccountDeletion: SignalValue, supportsDataDeletionRequests: SignalValue, supportsDataExport: SignalValue, supportsSubscriptions: SignalValue, sellsPersonalInformation: SignalValue, usesCookiesOrTracking: SignalValue, supportsTwoFactorAuth: SignalValue) {
              self.init(snapshot: ["__typename": "CapabilitySignals", "supportsAccountCreation": supportsAccountCreation, "supportsAccountDeletion": supportsAccountDeletion, "supportsDataDeletionRequests": supportsDataDeletionRequests, "supportsDataExport": supportsDataExport, "supportsSubscriptions": supportsSubscriptions, "sellsPersonalInformation": sellsPersonalInformation, "usesCookiesOrTracking": usesCookiesOrTracking, "supportsTwoFactorAuth": supportsTwoFactorAuth])
            }

            internal var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            internal var supportsAccountCreation: SignalValue {
              get {
                return snapshot["supportsAccountCreation"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "supportsAccountCreation")
              }
            }

            internal var supportsAccountDeletion: SignalValue {
              get {
                return snapshot["supportsAccountDeletion"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "supportsAccountDeletion")
              }
            }

            internal var supportsDataDeletionRequests: SignalValue {
              get {
                return snapshot["supportsDataDeletionRequests"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "supportsDataDeletionRequests")
              }
            }

            internal var supportsDataExport: SignalValue {
              get {
                return snapshot["supportsDataExport"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "supportsDataExport")
              }
            }

            internal var supportsSubscriptions: SignalValue {
              get {
                return snapshot["supportsSubscriptions"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "supportsSubscriptions")
              }
            }

            internal var sellsPersonalInformation: SignalValue {
              get {
                return snapshot["sellsPersonalInformation"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "sellsPersonalInformation")
              }
            }

            internal var usesCookiesOrTracking: SignalValue {
              get {
                return snapshot["usesCookiesOrTracking"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "usesCookiesOrTracking")
              }
            }

            internal var supportsTwoFactorAuth: SignalValue {
              get {
                return snapshot["supportsTwoFactorAuth"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "supportsTwoFactorAuth")
              }
            }
          }

          internal struct RiskIndicator: GraphQLSelectionSet {
            internal static let possibleTypes = ["RiskIndicators"]

            internal static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("dataCollectionBreadth", type: .nonNull(.scalar(Int.self))),
              GraphQLField("collectsSensitiveDataForNonEssentialPurposes", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("sellsPersonalInformation", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("maxRetentionDays", type: .scalar(Int.self)),
              GraphQLField("hasIndefiniteRetention", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("encryptionPractices", type: .nonNull(.scalar(SignalValue.self))),
              GraphQLField("breachRisk", type: .nonNull(.scalar(SignalValue.self))),
            ]

            internal var snapshot: Snapshot

            internal init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            internal init(dataCollectionBreadth: Int, collectsSensitiveDataForNonEssentialPurposes: SignalValue, sellsPersonalInformation: SignalValue, maxRetentionDays: Int? = nil, hasIndefiniteRetention: SignalValue, encryptionPractices: SignalValue, breachRisk: SignalValue) {
              self.init(snapshot: ["__typename": "RiskIndicators", "dataCollectionBreadth": dataCollectionBreadth, "collectsSensitiveDataForNonEssentialPurposes": collectsSensitiveDataForNonEssentialPurposes, "sellsPersonalInformation": sellsPersonalInformation, "maxRetentionDays": maxRetentionDays, "hasIndefiniteRetention": hasIndefiniteRetention, "encryptionPractices": encryptionPractices, "breachRisk": breachRisk])
            }

            internal var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            internal var dataCollectionBreadth: Int {
              get {
                return snapshot["dataCollectionBreadth"]! as! Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "dataCollectionBreadth")
              }
            }

            internal var collectsSensitiveDataForNonEssentialPurposes: SignalValue {
              get {
                return snapshot["collectsSensitiveDataForNonEssentialPurposes"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "collectsSensitiveDataForNonEssentialPurposes")
              }
            }

            internal var sellsPersonalInformation: SignalValue {
              get {
                return snapshot["sellsPersonalInformation"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "sellsPersonalInformation")
              }
            }

            internal var maxRetentionDays: Int? {
              get {
                return snapshot["maxRetentionDays"] as? Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "maxRetentionDays")
              }
            }

            internal var hasIndefiniteRetention: SignalValue {
              get {
                return snapshot["hasIndefiniteRetention"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "hasIndefiniteRetention")
              }
            }

            internal var encryptionPractices: SignalValue {
              get {
                return snapshot["encryptionPractices"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "encryptionPractices")
              }
            }

            internal var breachRisk: SignalValue {
              get {
                return snapshot["breachRisk"]! as! SignalValue
              }
              set {
                snapshot.updateValue(newValue, forKey: "breachRisk")
              }
            }
          }

          internal struct OrganizationIdentity: GraphQLSelectionSet {
            internal static let possibleTypes = ["OrganizationIdentity"]

            internal static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("brandName", type: .scalar(String.self)),
              GraphQLField("companyName", type: .scalar(String.self)),
              GraphQLField("primaryCategory", type: .scalar(OrganizationCategory.self)),
              GraphQLField("categories", type: .nonNull(.list(.nonNull(.scalar(OrganizationCategory.self))))),
            ]

            internal var snapshot: Snapshot

            internal init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            internal init(brandName: String? = nil, companyName: String? = nil, primaryCategory: OrganizationCategory? = nil, categories: [OrganizationCategory]) {
              self.init(snapshot: ["__typename": "OrganizationIdentity", "brandName": brandName, "companyName": companyName, "primaryCategory": primaryCategory, "categories": categories])
            }

            internal var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            internal var brandName: String? {
              get {
                return snapshot["brandName"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "brandName")
              }
            }

            internal var companyName: String? {
              get {
                return snapshot["companyName"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "companyName")
              }
            }

            internal var primaryCategory: OrganizationCategory? {
              get {
                return snapshot["primaryCategory"] as? OrganizationCategory
              }
              set {
                snapshot.updateValue(newValue, forKey: "primaryCategory")
              }
            }

            internal var categories: [OrganizationCategory] {
              get {
                return snapshot["categories"]! as! [OrganizationCategory]
              }
              set {
                snapshot.updateValue(newValue, forKey: "categories")
              }
            }
          }
        }
      }
    }
  }
}

internal final class GetProviderConfigurationQuery: GraphQLQuery {
  internal static let operationString =
    "query GetProviderConfiguration {\n  getProviderConfiguration {\n    __typename\n    ...ProviderConfigurationFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(ProviderConfigurationFields.fragmentString) }

  internal init() {
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("getProviderConfiguration", type: .nonNull(.object(GetProviderConfiguration.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(getProviderConfiguration: GetProviderConfiguration) {
      self.init(snapshot: ["__typename": "Query", "getProviderConfiguration": getProviderConfiguration.snapshot])
    }

    /// Get the opaque provider configuration required by consumers to support
    /// the provider OAuth flow.
    internal var getProviderConfiguration: GetProviderConfiguration {
      get {
        return GetProviderConfiguration(snapshot: snapshot["getProviderConfiguration"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getProviderConfiguration")
      }
    }

    internal struct GetProviderConfiguration: GraphQLSelectionSet {
      internal static let possibleTypes = ["ProviderConfiguration"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("data", type: .nonNull(.scalar(GraphQLID.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(data: GraphQLID) {
        self.init(snapshot: ["__typename": "ProviderConfiguration", "data": data])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var data: GraphQLID {
        get {
          return snapshot["data"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "data")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var providerConfigurationFields: ProviderConfigurationFields {
          get {
            return ProviderConfigurationFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

internal final class GetOrganizationAnalysisQuery: GraphQLQuery {
  internal static let operationString =
    "query GetOrganizationAnalysis($domain: String!, $options: OrganizationAnalysisOptions) {\n  getOrganizationAnalysis(domain: $domain, options: $options) {\n    __typename\n    ...OrganizationAnalysisFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(OrganizationAnalysisFields.fragmentString).appending(AnalysisResultDataFields.fragmentString) }

  internal var domain: String
  internal var options: OrganizationAnalysisOptions?

  internal init(domain: String, options: OrganizationAnalysisOptions? = nil) {
    self.domain = domain
    self.options = options
  }

  internal var variables: GraphQLMap? {
    return ["domain": domain, "options": options]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("getOrganizationAnalysis", arguments: ["domain": GraphQLVariable("domain"), "options": GraphQLVariable("options")], type: .object(GetOrganizationAnalysis.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(getOrganizationAnalysis: GetOrganizationAnalysis? = nil) {
      self.init(snapshot: ["__typename": "Query", "getOrganizationAnalysis": getOrganizationAnalysis.flatMap { $0.snapshot }])
    }

    /// Analyze (read-through) and return the shared, organization-generic analysis
    /// for a domain. Returns PENDING when an asynchronous source is still resolving;
    /// re-query for the terminal result.
    /// 
    /// Pass `options` to control the analysis mode and domain resolution. The
    /// top-level `mode` argument is deprecated in favour of `options.mode`; when both
    /// are supplied, `options` wins. When neither mode is supplied the behaviour is
    /// ANALYZE, and resolution defaults to REGISTRABLE.
    internal var getOrganizationAnalysis: GetOrganizationAnalysis? {
      get {
        return (snapshot["getOrganizationAnalysis"] as? Snapshot).flatMap { GetOrganizationAnalysis(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getOrganizationAnalysis")
      }
    }

    internal struct GetOrganizationAnalysis: GraphQLSelectionSet {
      internal static let possibleTypes = ["OrganizationAnalysis"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("domain", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(AnalysisResultStatus.self))),
        GraphQLField("lastAnalyzedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("data", type: .object(Datum.selections)),
        GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(id: GraphQLID, domain: String, status: AnalysisResultStatus, lastAnalyzedAtEpochMs: Double, data: Datum? = nil, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
        self.init(snapshot: ["__typename": "OrganizationAnalysis", "id": id, "domain": domain, "status": status, "lastAnalyzedAtEpochMs": lastAnalyzedAtEpochMs, "data": data.flatMap { $0.snapshot }, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      internal var domain: String {
        get {
          return snapshot["domain"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "domain")
        }
      }

      internal var status: AnalysisResultStatus {
        get {
          return snapshot["status"]! as! AnalysisResultStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      internal var lastAnalyzedAtEpochMs: Double {
        get {
          return snapshot["lastAnalyzedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastAnalyzedAtEpochMs")
        }
      }

      internal var data: Datum? {
        get {
          return (snapshot["data"] as? Snapshot).flatMap { Datum(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "data")
        }
      }

      internal var owner: GraphQLID {
        get {
          return snapshot["owner"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var organizationAnalysisFields: OrganizationAnalysisFields {
          get {
            return OrganizationAnalysisFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Datum: GraphQLSelectionSet {
        internal static let possibleTypes = ["AnalysisResultData"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("privacyScore", type: .object(PrivacyScore.selections)),
          GraphQLField("privacySummary", type: .nonNull(.object(PrivacySummary.selections))),
          GraphQLField("categories", type: .nonNull(.list(.nonNull(.object(Category.selections))))),
          GraphQLField("capabilities", type: .nonNull(.object(Capability.selections))),
          GraphQLField("riskIndicators", type: .nonNull(.object(RiskIndicator.selections))),
          GraphQLField("organizationIdentity", type: .object(OrganizationIdentity.selections)),
          GraphQLField("attribution", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(privacyScore: PrivacyScore? = nil, privacySummary: PrivacySummary, categories: [Category], capabilities: Capability, riskIndicators: RiskIndicator, organizationIdentity: OrganizationIdentity? = nil, attribution: [String]) {
          self.init(snapshot: ["__typename": "AnalysisResultData", "privacyScore": privacyScore.flatMap { $0.snapshot }, "privacySummary": privacySummary.snapshot, "categories": categories.map { $0.snapshot }, "capabilities": capabilities.snapshot, "riskIndicators": riskIndicators.snapshot, "organizationIdentity": organizationIdentity.flatMap { $0.snapshot }, "attribution": attribution])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var privacyScore: PrivacyScore? {
          get {
            return (snapshot["privacyScore"] as? Snapshot).flatMap { PrivacyScore(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "privacyScore")
          }
        }

        internal var privacySummary: PrivacySummary {
          get {
            return PrivacySummary(snapshot: snapshot["privacySummary"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "privacySummary")
          }
        }

        internal var categories: [Category] {
          get {
            return (snapshot["categories"] as! [Snapshot]).map { Category(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "categories")
          }
        }

        internal var capabilities: Capability {
          get {
            return Capability(snapshot: snapshot["capabilities"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "capabilities")
          }
        }

        internal var riskIndicators: RiskIndicator {
          get {
            return RiskIndicator(snapshot: snapshot["riskIndicators"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "riskIndicators")
          }
        }

        internal var organizationIdentity: OrganizationIdentity? {
          get {
            return (snapshot["organizationIdentity"] as? Snapshot).flatMap { OrganizationIdentity(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "organizationIdentity")
          }
        }

        internal var attribution: [String] {
          get {
            return snapshot["attribution"]! as! [String]
          }
          set {
            snapshot.updateValue(newValue, forKey: "attribution")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var analysisResultDataFields: AnalysisResultDataFields {
            get {
              return AnalysisResultDataFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        internal struct PrivacyScore: GraphQLSelectionSet {
          internal static let possibleTypes = ["PrivacyScore"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("score", type: .nonNull(.scalar(Double.self))),
            GraphQLField("breakdown", type: .nonNull(.list(.nonNull(.object(Breakdown.selections))))),
            GraphQLField("coverage", type: .nonNull(.object(Coverage.selections))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(score: Double, breakdown: [Breakdown], coverage: Coverage) {
            self.init(snapshot: ["__typename": "PrivacyScore", "score": score, "breakdown": breakdown.map { $0.snapshot }, "coverage": coverage.snapshot])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var score: Double {
            get {
              return snapshot["score"]! as! Double
            }
            set {
              snapshot.updateValue(newValue, forKey: "score")
            }
          }

          internal var breakdown: [Breakdown] {
            get {
              return (snapshot["breakdown"] as! [Snapshot]).map { Breakdown(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "breakdown")
            }
          }

          internal var coverage: Coverage {
            get {
              return Coverage(snapshot: snapshot["coverage"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "coverage")
            }
          }

          internal struct Breakdown: GraphQLSelectionSet {
            internal static let possibleTypes = ["ScoreContribution"]

            internal static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("aspect", type: .nonNull(.scalar(String.self))),
              GraphQLField("contribution", type: .nonNull(.scalar(Double.self))),
            ]

            internal var snapshot: Snapshot

            internal init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            internal init(aspect: String, contribution: Double) {
              self.init(snapshot: ["__typename": "ScoreContribution", "aspect": aspect, "contribution": contribution])
            }

            internal var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            internal var aspect: String {
              get {
                return snapshot["aspect"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "aspect")
              }
            }

            internal var contribution: Double {
              get {
                return snapshot["contribution"]! as! Double
              }
              set {
                snapshot.updateValue(newValue, forKey: "contribution")
              }
            }
          }

          internal struct Coverage: GraphQLSelectionSet {
            internal static let possibleTypes = ["ScoreCoverage"]

            internal static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("evaluated", type: .nonNull(.scalar(Int.self))),
              GraphQLField("total", type: .nonNull(.scalar(Int.self))),
            ]

            internal var snapshot: Snapshot

            internal init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            internal init(evaluated: Int, total: Int) {
              self.init(snapshot: ["__typename": "ScoreCoverage", "evaluated": evaluated, "total": total])
            }

            internal var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            internal var evaluated: Int {
              get {
                return snapshot["evaluated"]! as! Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "evaluated")
              }
            }

            internal var total: Int {
              get {
                return snapshot["total"]! as! Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "total")
              }
            }
          }
        }

        internal struct PrivacySummary: GraphQLSelectionSet {
          internal static let possibleTypes = ["PrivacySummary"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("bulletPoints", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
            GraphQLField("sourceUrl", type: .nonNull(.scalar(String.self))),
            GraphQLField("sourceLastUpdated", type: .scalar(String.self)),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(bulletPoints: [String], sourceUrl: String, sourceLastUpdated: String? = nil) {
            self.init(snapshot: ["__typename": "PrivacySummary", "bulletPoints": bulletPoints, "sourceUrl": sourceUrl, "sourceLastUpdated": sourceLastUpdated])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var bulletPoints: [String] {
            get {
              return snapshot["bulletPoints"]! as! [String]
            }
            set {
              snapshot.updateValue(newValue, forKey: "bulletPoints")
            }
          }

          internal var sourceUrl: String {
            get {
              return snapshot["sourceUrl"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sourceUrl")
            }
          }

          internal var sourceLastUpdated: String? {
            get {
              return snapshot["sourceLastUpdated"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "sourceLastUpdated")
            }
          }
        }

        internal struct Category: GraphQLSelectionSet {
          internal static let possibleTypes = ["CategorySignals"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("category", type: .nonNull(.scalar(DataCategory.self))),
            GraphQLField("collected", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("dataLabels", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
            GraphQLField("sharedWithThirdParties", type: .nonNull(.scalar(ShareStyle.self))),
            GraphQLField("monetized", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("retained", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("retention", type: .object(Retention.selections)),
            GraphQLField("userCanOptOut", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("requiredForService", type: .scalar(SignalValue.self)),
            GraphQLField("requiredForLaw", type: .scalar(SignalValue.self)),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(category: DataCategory, collected: SignalValue, dataLabels: [String], sharedWithThirdParties: ShareStyle, monetized: SignalValue, retained: SignalValue, retention: Retention? = nil, userCanOptOut: SignalValue, requiredForService: SignalValue? = nil, requiredForLaw: SignalValue? = nil) {
            self.init(snapshot: ["__typename": "CategorySignals", "category": category, "collected": collected, "dataLabels": dataLabels, "sharedWithThirdParties": sharedWithThirdParties, "monetized": monetized, "retained": retained, "retention": retention.flatMap { $0.snapshot }, "userCanOptOut": userCanOptOut, "requiredForService": requiredForService, "requiredForLaw": requiredForLaw])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var category: DataCategory {
            get {
              return snapshot["category"]! as! DataCategory
            }
            set {
              snapshot.updateValue(newValue, forKey: "category")
            }
          }

          internal var collected: SignalValue {
            get {
              return snapshot["collected"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "collected")
            }
          }

          internal var dataLabels: [String] {
            get {
              return snapshot["dataLabels"]! as! [String]
            }
            set {
              snapshot.updateValue(newValue, forKey: "dataLabels")
            }
          }

          internal var sharedWithThirdParties: ShareStyle {
            get {
              return snapshot["sharedWithThirdParties"]! as! ShareStyle
            }
            set {
              snapshot.updateValue(newValue, forKey: "sharedWithThirdParties")
            }
          }

          internal var monetized: SignalValue {
            get {
              return snapshot["monetized"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "monetized")
            }
          }

          internal var retained: SignalValue {
            get {
              return snapshot["retained"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "retained")
            }
          }

          internal var retention: Retention? {
            get {
              return (snapshot["retention"] as? Snapshot).flatMap { Retention(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "retention")
            }
          }

          internal var userCanOptOut: SignalValue {
            get {
              return snapshot["userCanOptOut"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "userCanOptOut")
            }
          }

          internal var requiredForService: SignalValue? {
            get {
              return snapshot["requiredForService"] as? SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "requiredForService")
            }
          }

          internal var requiredForLaw: SignalValue? {
            get {
              return snapshot["requiredForLaw"] as? SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "requiredForLaw")
            }
          }

          internal struct Retention: GraphQLSelectionSet {
            internal static let possibleTypes = ["RetentionInfo"]

            internal static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("style", type: .nonNull(.scalar(RetentionStyle.self))),
              GraphQLField("timeInDays", type: .scalar(Int.self)),
              GraphQLField("additionalInfo", type: .scalar(String.self)),
            ]

            internal var snapshot: Snapshot

            internal init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            internal init(style: RetentionStyle, timeInDays: Int? = nil, additionalInfo: String? = nil) {
              self.init(snapshot: ["__typename": "RetentionInfo", "style": style, "timeInDays": timeInDays, "additionalInfo": additionalInfo])
            }

            internal var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            internal var style: RetentionStyle {
              get {
                return snapshot["style"]! as! RetentionStyle
              }
              set {
                snapshot.updateValue(newValue, forKey: "style")
              }
            }

            internal var timeInDays: Int? {
              get {
                return snapshot["timeInDays"] as? Int
              }
              set {
                snapshot.updateValue(newValue, forKey: "timeInDays")
              }
            }

            internal var additionalInfo: String? {
              get {
                return snapshot["additionalInfo"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "additionalInfo")
              }
            }
          }
        }

        internal struct Capability: GraphQLSelectionSet {
          internal static let possibleTypes = ["CapabilitySignals"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("supportsAccountCreation", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("supportsAccountDeletion", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("supportsDataDeletionRequests", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("supportsDataExport", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("supportsSubscriptions", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("sellsPersonalInformation", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("usesCookiesOrTracking", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("supportsTwoFactorAuth", type: .nonNull(.scalar(SignalValue.self))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(supportsAccountCreation: SignalValue, supportsAccountDeletion: SignalValue, supportsDataDeletionRequests: SignalValue, supportsDataExport: SignalValue, supportsSubscriptions: SignalValue, sellsPersonalInformation: SignalValue, usesCookiesOrTracking: SignalValue, supportsTwoFactorAuth: SignalValue) {
            self.init(snapshot: ["__typename": "CapabilitySignals", "supportsAccountCreation": supportsAccountCreation, "supportsAccountDeletion": supportsAccountDeletion, "supportsDataDeletionRequests": supportsDataDeletionRequests, "supportsDataExport": supportsDataExport, "supportsSubscriptions": supportsSubscriptions, "sellsPersonalInformation": sellsPersonalInformation, "usesCookiesOrTracking": usesCookiesOrTracking, "supportsTwoFactorAuth": supportsTwoFactorAuth])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var supportsAccountCreation: SignalValue {
            get {
              return snapshot["supportsAccountCreation"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "supportsAccountCreation")
            }
          }

          internal var supportsAccountDeletion: SignalValue {
            get {
              return snapshot["supportsAccountDeletion"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "supportsAccountDeletion")
            }
          }

          internal var supportsDataDeletionRequests: SignalValue {
            get {
              return snapshot["supportsDataDeletionRequests"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "supportsDataDeletionRequests")
            }
          }

          internal var supportsDataExport: SignalValue {
            get {
              return snapshot["supportsDataExport"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "supportsDataExport")
            }
          }

          internal var supportsSubscriptions: SignalValue {
            get {
              return snapshot["supportsSubscriptions"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "supportsSubscriptions")
            }
          }

          internal var sellsPersonalInformation: SignalValue {
            get {
              return snapshot["sellsPersonalInformation"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "sellsPersonalInformation")
            }
          }

          internal var usesCookiesOrTracking: SignalValue {
            get {
              return snapshot["usesCookiesOrTracking"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "usesCookiesOrTracking")
            }
          }

          internal var supportsTwoFactorAuth: SignalValue {
            get {
              return snapshot["supportsTwoFactorAuth"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "supportsTwoFactorAuth")
            }
          }
        }

        internal struct RiskIndicator: GraphQLSelectionSet {
          internal static let possibleTypes = ["RiskIndicators"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("dataCollectionBreadth", type: .nonNull(.scalar(Int.self))),
            GraphQLField("collectsSensitiveDataForNonEssentialPurposes", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("sellsPersonalInformation", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("maxRetentionDays", type: .scalar(Int.self)),
            GraphQLField("hasIndefiniteRetention", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("encryptionPractices", type: .nonNull(.scalar(SignalValue.self))),
            GraphQLField("breachRisk", type: .nonNull(.scalar(SignalValue.self))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(dataCollectionBreadth: Int, collectsSensitiveDataForNonEssentialPurposes: SignalValue, sellsPersonalInformation: SignalValue, maxRetentionDays: Int? = nil, hasIndefiniteRetention: SignalValue, encryptionPractices: SignalValue, breachRisk: SignalValue) {
            self.init(snapshot: ["__typename": "RiskIndicators", "dataCollectionBreadth": dataCollectionBreadth, "collectsSensitiveDataForNonEssentialPurposes": collectsSensitiveDataForNonEssentialPurposes, "sellsPersonalInformation": sellsPersonalInformation, "maxRetentionDays": maxRetentionDays, "hasIndefiniteRetention": hasIndefiniteRetention, "encryptionPractices": encryptionPractices, "breachRisk": breachRisk])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var dataCollectionBreadth: Int {
            get {
              return snapshot["dataCollectionBreadth"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "dataCollectionBreadth")
            }
          }

          internal var collectsSensitiveDataForNonEssentialPurposes: SignalValue {
            get {
              return snapshot["collectsSensitiveDataForNonEssentialPurposes"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "collectsSensitiveDataForNonEssentialPurposes")
            }
          }

          internal var sellsPersonalInformation: SignalValue {
            get {
              return snapshot["sellsPersonalInformation"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "sellsPersonalInformation")
            }
          }

          internal var maxRetentionDays: Int? {
            get {
              return snapshot["maxRetentionDays"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "maxRetentionDays")
            }
          }

          internal var hasIndefiniteRetention: SignalValue {
            get {
              return snapshot["hasIndefiniteRetention"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "hasIndefiniteRetention")
            }
          }

          internal var encryptionPractices: SignalValue {
            get {
              return snapshot["encryptionPractices"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "encryptionPractices")
            }
          }

          internal var breachRisk: SignalValue {
            get {
              return snapshot["breachRisk"]! as! SignalValue
            }
            set {
              snapshot.updateValue(newValue, forKey: "breachRisk")
            }
          }
        }

        internal struct OrganizationIdentity: GraphQLSelectionSet {
          internal static let possibleTypes = ["OrganizationIdentity"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("brandName", type: .scalar(String.self)),
            GraphQLField("companyName", type: .scalar(String.self)),
            GraphQLField("primaryCategory", type: .scalar(OrganizationCategory.self)),
            GraphQLField("categories", type: .nonNull(.list(.nonNull(.scalar(OrganizationCategory.self))))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(brandName: String? = nil, companyName: String? = nil, primaryCategory: OrganizationCategory? = nil, categories: [OrganizationCategory]) {
            self.init(snapshot: ["__typename": "OrganizationIdentity", "brandName": brandName, "companyName": companyName, "primaryCategory": primaryCategory, "categories": categories])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var brandName: String? {
            get {
              return snapshot["brandName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "brandName")
            }
          }

          internal var companyName: String? {
            get {
              return snapshot["companyName"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "companyName")
            }
          }

          internal var primaryCategory: OrganizationCategory? {
            get {
              return snapshot["primaryCategory"] as? OrganizationCategory
            }
            set {
              snapshot.updateValue(newValue, forKey: "primaryCategory")
            }
          }

          internal var categories: [OrganizationCategory] {
            get {
              return snapshot["categories"]! as! [OrganizationCategory]
            }
            set {
              snapshot.updateValue(newValue, forKey: "categories")
            }
          }
        }
      }
    }
  }
}

internal final class ListAvailableActionsQuery: GraphQLQuery {
  internal static let operationString =
    "query ListAvailableActions($dataHolderId: ID!) {\n  listAvailableActions(dataHolderId: $dataHolderId) {\n    __typename\n    items {\n      __typename\n      ...AvailableActionFields\n    }\n    nextToken\n  }\n}"

  internal static var requestString: String { return operationString.appending(AvailableActionFields.fragmentString) }

  internal var dataHolderId: GraphQLID

  internal init(dataHolderId: GraphQLID) {
    self.dataHolderId = dataHolderId
  }

  internal var variables: GraphQLMap? {
    return ["dataHolderId": dataHolderId]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("listAvailableActions", arguments: ["dataHolderId": GraphQLVariable("dataHolderId")], type: .nonNull(.object(ListAvailableAction.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(listAvailableActions: ListAvailableAction) {
      self.init(snapshot: ["__typename": "Query", "listAvailableActions": listAvailableActions.snapshot])
    }

    /// List the actions currently available for a data holder relationship. Derived
    /// at query time by merging static, analysis, and discovery sources; not
    /// persisted. The owning virtual presence is derived from the data holder.
    internal var listAvailableActions: ListAvailableAction {
      get {
        return ListAvailableAction(snapshot: snapshot["listAvailableActions"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "listAvailableActions")
      }
    }

    internal struct ListAvailableAction: GraphQLSelectionSet {
      internal static let possibleTypes = ["AvailableActionConnection"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(items: [Item], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "AvailableActionConnection", "items": items.map { $0.snapshot }, "nextToken": nextToken])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var items: [Item] {
        get {
          return (snapshot["items"] as! [Snapshot]).map { Item(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "items")
        }
      }

      internal var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      internal struct Item: GraphQLSelectionSet {
        internal static let possibleTypes = ["AvailableAction"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("intent", type: .nonNull(.scalar(ActionIntent.self))),
          GraphQLField("additionalInfo", type: .scalar(String.self)),
          GraphQLField("fulfilmentMethod", type: .nonNull(.scalar(ActionFulfilmentMethod.self))),
          GraphQLField("origin", type: .nonNull(.scalar(ActionOrigin.self))),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("description", type: .scalar(String.self)),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(intent: ActionIntent, additionalInfo: String? = nil, fulfilmentMethod: ActionFulfilmentMethod, origin: ActionOrigin, title: String? = nil, description: String? = nil) {
          self.init(snapshot: ["__typename": "AvailableAction", "intent": intent, "additionalInfo": additionalInfo, "fulfilmentMethod": fulfilmentMethod, "origin": origin, "title": title, "description": description])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var intent: ActionIntent {
          get {
            return snapshot["intent"]! as! ActionIntent
          }
          set {
            snapshot.updateValue(newValue, forKey: "intent")
          }
        }

        internal var additionalInfo: String? {
          get {
            return snapshot["additionalInfo"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "additionalInfo")
          }
        }

        internal var fulfilmentMethod: ActionFulfilmentMethod {
          get {
            return snapshot["fulfilmentMethod"]! as! ActionFulfilmentMethod
          }
          set {
            snapshot.updateValue(newValue, forKey: "fulfilmentMethod")
          }
        }

        internal var origin: ActionOrigin {
          get {
            return snapshot["origin"]! as! ActionOrigin
          }
          set {
            snapshot.updateValue(newValue, forKey: "origin")
          }
        }

        internal var title: String? {
          get {
            return snapshot["title"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        internal var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var availableActionFields: AvailableActionFields {
            get {
              return AvailableActionFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class OnVirtualPresenceUpdateSubscription: GraphQLSubscription {
  internal static let operationString =
    "subscription OnVirtualPresenceUpdate($owner: ID!) {\n  onVirtualPresenceUpdate(owner: $owner) {\n    __typename\n    ...VirtualPresenceFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(VirtualPresenceFields.fragmentString) }

  internal var owner: GraphQLID

  internal init(owner: GraphQLID) {
    self.owner = owner
  }

  internal var variables: GraphQLMap? {
    return ["owner": owner]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Subscription"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("onVirtualPresenceUpdate", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnVirtualPresenceUpdate.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(onVirtualPresenceUpdate: OnVirtualPresenceUpdate? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onVirtualPresenceUpdate": onVirtualPresenceUpdate.flatMap { $0.snapshot }])
    }

    /// Subscribe to virtual presence state updates for the authenticated user.
    /// Emitted when a virtual presence changes state (e.g. to NEEDS_REAUTH).
    internal var onVirtualPresenceUpdate: OnVirtualPresenceUpdate? {
      get {
        return (snapshot["onVirtualPresenceUpdate"] as? Snapshot).flatMap { OnVirtualPresenceUpdate(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onVirtualPresenceUpdate")
      }
    }

    internal struct OnVirtualPresenceUpdate: GraphQLSelectionSet {
      internal static let possibleTypes = ["VirtualPresence"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("providerType", type: .nonNull(.scalar(ProviderType.self))),
        GraphQLField("identifier", type: .nonNull(.scalar(String.self))),
        GraphQLField("state", type: .nonNull(.scalar(VirtualPresenceState.self))),
        GraphQLField("relationshipProvider", type: .scalar(RelationshipProvider.self)),
        GraphQLField("lastScannedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(id: GraphQLID, providerType: ProviderType, identifier: String, state: VirtualPresenceState, relationshipProvider: RelationshipProvider? = nil, lastScannedAtEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
        self.init(snapshot: ["__typename": "VirtualPresence", "id": id, "providerType": providerType, "identifier": identifier, "state": state, "relationshipProvider": relationshipProvider, "lastScannedAtEpochMs": lastScannedAtEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      internal var providerType: ProviderType {
        get {
          return snapshot["providerType"]! as! ProviderType
        }
        set {
          snapshot.updateValue(newValue, forKey: "providerType")
        }
      }

      internal var identifier: String {
        get {
          return snapshot["identifier"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "identifier")
        }
      }

      internal var state: VirtualPresenceState {
        get {
          return snapshot["state"]! as! VirtualPresenceState
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      internal var relationshipProvider: RelationshipProvider? {
        get {
          return snapshot["relationshipProvider"] as? RelationshipProvider
        }
        set {
          snapshot.updateValue(newValue, forKey: "relationshipProvider")
        }
      }

      internal var lastScannedAtEpochMs: Double {
        get {
          return snapshot["lastScannedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastScannedAtEpochMs")
        }
      }

      internal var owner: GraphQLID {
        get {
          return snapshot["owner"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var virtualPresenceFields: VirtualPresenceFields {
          get {
            return VirtualPresenceFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

internal final class OnDataHoldersUpdateSubscription: GraphQLSubscription {
  internal static let operationString =
    "subscription OnDataHoldersUpdate($owner: ID!) {\n  onDataHoldersUpdate(owner: $owner) {\n    __typename\n    ...DataHoldersUpdateFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(DataHoldersUpdateFields.fragmentString).appending(DataHolderUpdateItemFields.fragmentString) }

  internal var owner: GraphQLID

  internal init(owner: GraphQLID) {
    self.owner = owner
  }

  internal var variables: GraphQLMap? {
    return ["owner": owner]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Subscription"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("onDataHoldersUpdate", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnDataHoldersUpdate.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(onDataHoldersUpdate: OnDataHoldersUpdate? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDataHoldersUpdate": onDataHoldersUpdate.flatMap { $0.snapshot }])
    }

    /// Subscribe to batch data holder updates during discovery.
    /// Emitted once per discovery page with all data holders found in that page.
    internal var onDataHoldersUpdate: OnDataHoldersUpdate? {
      get {
        return (snapshot["onDataHoldersUpdate"] as? Snapshot).flatMap { OnDataHoldersUpdate(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDataHoldersUpdate")
      }
    }

    internal struct OnDataHoldersUpdate: GraphQLSelectionSet {
      internal static let possibleTypes = ["DataHoldersUpdate"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
        GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(items: [Item], owner: GraphQLID) {
        self.init(snapshot: ["__typename": "DataHoldersUpdate", "items": items.map { $0.snapshot }, "owner": owner])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var items: [Item] {
        get {
          return (snapshot["items"] as! [Snapshot]).map { Item(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "items")
        }
      }

      internal var owner: GraphQLID {
        get {
          return snapshot["owner"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var dataHoldersUpdateFields: DataHoldersUpdateFields {
          get {
            return DataHoldersUpdateFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Item: GraphQLSelectionSet {
        internal static let possibleTypes = ["DataHolderUpdateItem"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("domainName", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("protectionState", type: .nonNull(.scalar(DataHolderProtectionState.self))),
          GraphQLField("complianceConcern", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("mostRecentInteractionEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("changeType", type: .nonNull(.scalar(DataHolderChangeType.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(id: GraphQLID, virtualPresenceId: GraphQLID, domainName: String, name: String, protectionState: DataHolderProtectionState, complianceConcern: Bool, mostRecentInteractionEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double, changeType: DataHolderChangeType) {
          self.init(snapshot: ["__typename": "DataHolderUpdateItem", "id": id, "virtualPresenceId": virtualPresenceId, "domainName": domainName, "name": name, "protectionState": protectionState, "complianceConcern": complianceConcern, "mostRecentInteractionEpochMs": mostRecentInteractionEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "changeType": changeType])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        internal var virtualPresenceId: GraphQLID {
          get {
            return snapshot["virtualPresenceId"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "virtualPresenceId")
          }
        }

        internal var domainName: String {
          get {
            return snapshot["domainName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "domainName")
          }
        }

        internal var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        internal var protectionState: DataHolderProtectionState {
          get {
            return snapshot["protectionState"]! as! DataHolderProtectionState
          }
          set {
            snapshot.updateValue(newValue, forKey: "protectionState")
          }
        }

        internal var complianceConcern: Bool {
          get {
            return snapshot["complianceConcern"]! as! Bool
          }
          set {
            snapshot.updateValue(newValue, forKey: "complianceConcern")
          }
        }

        internal var mostRecentInteractionEpochMs: Double {
          get {
            return snapshot["mostRecentInteractionEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "mostRecentInteractionEpochMs")
          }
        }

        internal var owner: GraphQLID {
          get {
            return snapshot["owner"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        internal var version: Int {
          get {
            return snapshot["version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        internal var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        internal var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        internal var changeType: DataHolderChangeType {
          get {
            return snapshot["changeType"]! as! DataHolderChangeType
          }
          set {
            snapshot.updateValue(newValue, forKey: "changeType")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var dataHolderUpdateItemFields: DataHolderUpdateItemFields {
            get {
              return DataHolderUpdateItemFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class OnAnalysisResultUpdateSubscription: GraphQLSubscription {
  internal static let operationString =
    "subscription OnAnalysisResultUpdate($owner: ID!) {\n  onAnalysisResultUpdate(owner: $owner) {\n    __typename\n    ...AnalysisResultUpdateFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(AnalysisResultUpdateFields.fragmentString) }

  internal var owner: GraphQLID

  internal init(owner: GraphQLID) {
    self.owner = owner
  }

  internal var variables: GraphQLMap? {
    return ["owner": owner]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Subscription"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("onAnalysisResultUpdate", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnAnalysisResultUpdate.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(onAnalysisResultUpdate: OnAnalysisResultUpdate? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onAnalysisResultUpdate": onAnalysisResultUpdate.flatMap { $0.snapshot }])
    }

    /// Subscribe to analysis result updates for the authenticated user.
    /// Emitted each time an analysis result is created or updated.
    /// Use getAnalysisResult to fetch the full typed data.
    internal var onAnalysisResultUpdate: OnAnalysisResultUpdate? {
      get {
        return (snapshot["onAnalysisResultUpdate"] as? Snapshot).flatMap { OnAnalysisResultUpdate(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onAnalysisResultUpdate")
      }
    }

    internal struct OnAnalysisResultUpdate: GraphQLSelectionSet {
      internal static let possibleTypes = ["AnalysisResultUpdate"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("dataHolderIdentifier", type: .nonNull(.scalar(String.self))),
        GraphQLField("status", type: .nonNull(.scalar(AnalysisResultStatus.self))),
        GraphQLField("lastAnalyzedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(id: GraphQLID, virtualPresenceId: GraphQLID, dataHolderIdentifier: String, status: AnalysisResultStatus, lastAnalyzedAtEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
        self.init(snapshot: ["__typename": "AnalysisResultUpdate", "id": id, "virtualPresenceId": virtualPresenceId, "dataHolderIdentifier": dataHolderIdentifier, "status": status, "lastAnalyzedAtEpochMs": lastAnalyzedAtEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      internal var virtualPresenceId: GraphQLID {
        get {
          return snapshot["virtualPresenceId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "virtualPresenceId")
        }
      }

      internal var dataHolderIdentifier: String {
        get {
          return snapshot["dataHolderIdentifier"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dataHolderIdentifier")
        }
      }

      internal var status: AnalysisResultStatus {
        get {
          return snapshot["status"]! as! AnalysisResultStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      internal var lastAnalyzedAtEpochMs: Double {
        get {
          return snapshot["lastAnalyzedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "lastAnalyzedAtEpochMs")
        }
      }

      internal var owner: GraphQLID {
        get {
          return snapshot["owner"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var analysisResultUpdateFields: AnalysisResultUpdateFields {
          get {
            return AnalysisResultUpdateFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

internal final class OnActionStatusUpdateSubscription: GraphQLSubscription {
  internal static let operationString =
    "subscription OnActionStatusUpdate($owner: ID!) {\n  onActionStatusUpdate(owner: $owner) {\n    __typename\n    ...ActionFields\n  }\n}"

  internal static var requestString: String { return operationString.appending(ActionFields.fragmentString).appending(AssistedPayloadFields.fragmentString) }

  internal var owner: GraphQLID

  internal init(owner: GraphQLID) {
    self.owner = owner
  }

  internal var variables: GraphQLMap? {
    return ["owner": owner]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Subscription"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("onActionStatusUpdate", arguments: ["owner": GraphQLVariable("owner")], type: .object(OnActionStatusUpdate.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(onActionStatusUpdate: OnActionStatusUpdate? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onActionStatusUpdate": onActionStatusUpdate.flatMap { $0.snapshot }])
    }

    /// Subscribe to action status updates for the authenticated user.
    /// Emitted each time an action's status changes. Carries the scalar fields of the
    /// action; re-query the action to fetch the full assistedPayload.
    internal var onActionStatusUpdate: OnActionStatusUpdate? {
      get {
        return (snapshot["onActionStatusUpdate"] as? Snapshot).flatMap { OnActionStatusUpdate(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onActionStatusUpdate")
      }
    }

    internal struct OnActionStatusUpdate: GraphQLSelectionSet {
      internal static let possibleTypes = ["Action"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("dataHolderId", type: .scalar(GraphQLID.self)),
        GraphQLField("intent", type: .nonNull(.scalar(ActionIntent.self))),
        GraphQLField("additionalInfo", type: .scalar(String.self)),
        GraphQLField("fulfilmentMethod", type: .nonNull(.scalar(ActionFulfilmentMethod.self))),
        GraphQLField("status", type: .nonNull(.scalar(ActionStatus.self))),
        GraphQLField("assistedPayload", type: .object(AssistedPayload.selections)),
        GraphQLField("initiatedAtEpochMs", type: .scalar(Double.self)),
        GraphQLField("completedAtEpochMs", type: .scalar(Double.self)),
        GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(id: GraphQLID, virtualPresenceId: GraphQLID, dataHolderId: GraphQLID? = nil, intent: ActionIntent, additionalInfo: String? = nil, fulfilmentMethod: ActionFulfilmentMethod, status: ActionStatus, assistedPayload: AssistedPayload? = nil, initiatedAtEpochMs: Double? = nil, completedAtEpochMs: Double? = nil, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
        self.init(snapshot: ["__typename": "Action", "id": id, "virtualPresenceId": virtualPresenceId, "dataHolderId": dataHolderId, "intent": intent, "additionalInfo": additionalInfo, "fulfilmentMethod": fulfilmentMethod, "status": status, "assistedPayload": assistedPayload.flatMap { $0.snapshot }, "initiatedAtEpochMs": initiatedAtEpochMs, "completedAtEpochMs": completedAtEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      internal var virtualPresenceId: GraphQLID {
        get {
          return snapshot["virtualPresenceId"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "virtualPresenceId")
        }
      }

      internal var dataHolderId: GraphQLID? {
        get {
          return snapshot["dataHolderId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "dataHolderId")
        }
      }

      internal var intent: ActionIntent {
        get {
          return snapshot["intent"]! as! ActionIntent
        }
        set {
          snapshot.updateValue(newValue, forKey: "intent")
        }
      }

      internal var additionalInfo: String? {
        get {
          return snapshot["additionalInfo"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "additionalInfo")
        }
      }

      internal var fulfilmentMethod: ActionFulfilmentMethod {
        get {
          return snapshot["fulfilmentMethod"]! as! ActionFulfilmentMethod
        }
        set {
          snapshot.updateValue(newValue, forKey: "fulfilmentMethod")
        }
      }

      internal var status: ActionStatus {
        get {
          return snapshot["status"]! as! ActionStatus
        }
        set {
          snapshot.updateValue(newValue, forKey: "status")
        }
      }

      internal var assistedPayload: AssistedPayload? {
        get {
          return (snapshot["assistedPayload"] as? Snapshot).flatMap { AssistedPayload(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "assistedPayload")
        }
      }

      internal var initiatedAtEpochMs: Double? {
        get {
          return snapshot["initiatedAtEpochMs"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "initiatedAtEpochMs")
        }
      }

      internal var completedAtEpochMs: Double? {
        get {
          return snapshot["completedAtEpochMs"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "completedAtEpochMs")
        }
      }

      internal var owner: GraphQLID {
        get {
          return snapshot["owner"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var actionFields: ActionFields {
          get {
            return ActionFields(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct AssistedPayload: GraphQLSelectionSet {
        internal static let possibleTypes = ["AssistedPayload"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("toAddress", type: .scalar(String.self)),
          GraphQLField("unsubscribeUrl", type: .scalar(String.self)),
          GraphQLField("unsubscribeMailto", type: .scalar(String.self)),
          GraphQLField("contact", type: .object(Contact.selections)),
          GraphQLField("jurisdiction", type: .scalar(String.self)),
          GraphQLField("instructions", type: .scalar(String.self)),
          GraphQLField("emailTemplate", type: .object(EmailTemplate.selections)),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(toAddress: String? = nil, unsubscribeUrl: String? = nil, unsubscribeMailto: String? = nil, contact: Contact? = nil, jurisdiction: String? = nil, instructions: String? = nil, emailTemplate: EmailTemplate? = nil) {
          self.init(snapshot: ["__typename": "AssistedPayload", "toAddress": toAddress, "unsubscribeUrl": unsubscribeUrl, "unsubscribeMailto": unsubscribeMailto, "contact": contact.flatMap { $0.snapshot }, "jurisdiction": jurisdiction, "instructions": instructions, "emailTemplate": emailTemplate.flatMap { $0.snapshot }])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var toAddress: String? {
          get {
            return snapshot["toAddress"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "toAddress")
          }
        }

        internal var unsubscribeUrl: String? {
          get {
            return snapshot["unsubscribeUrl"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "unsubscribeUrl")
          }
        }

        internal var unsubscribeMailto: String? {
          get {
            return snapshot["unsubscribeMailto"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "unsubscribeMailto")
          }
        }

        internal var contact: Contact? {
          get {
            return (snapshot["contact"] as? Snapshot).flatMap { Contact(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "contact")
          }
        }

        internal var jurisdiction: String? {
          get {
            return snapshot["jurisdiction"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "jurisdiction")
          }
        }

        internal var instructions: String? {
          get {
            return snapshot["instructions"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "instructions")
          }
        }

        internal var emailTemplate: EmailTemplate? {
          get {
            return (snapshot["emailTemplate"] as? Snapshot).flatMap { EmailTemplate(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "emailTemplate")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var assistedPayloadFields: AssistedPayloadFields {
            get {
              return AssistedPayloadFields(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        internal struct Contact: GraphQLSelectionSet {
          internal static let possibleTypes = ["ActionContact"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("phone", type: .scalar(String.self)),
            GraphQLField("address", type: .scalar(String.self)),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(email: String? = nil, phone: String? = nil, address: String? = nil) {
            self.init(snapshot: ["__typename": "ActionContact", "email": email, "phone": phone, "address": address])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var email: String? {
            get {
              return snapshot["email"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "email")
            }
          }

          internal var phone: String? {
            get {
              return snapshot["phone"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "phone")
            }
          }

          internal var address: String? {
            get {
              return snapshot["address"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "address")
            }
          }
        }

        internal struct EmailTemplate: GraphQLSelectionSet {
          internal static let possibleTypes = ["AssistedEmailTemplate"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("subject", type: .scalar(String.self)),
            GraphQLField("body", type: .nonNull(.scalar(String.self))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(subject: String? = nil, body: String) {
            self.init(snapshot: ["__typename": "AssistedEmailTemplate", "subject": subject, "body": body])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var subject: String? {
            get {
              return snapshot["subject"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "subject")
            }
          }

          internal var body: String {
            get {
              return snapshot["body"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "body")
            }
          }
        }
      }
    }
  }
}

internal struct AssistedPayloadFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment AssistedPayloadFields on AssistedPayload {\n  __typename\n  toAddress\n  unsubscribeUrl\n  unsubscribeMailto\n  contact {\n    __typename\n    email\n    phone\n    address\n  }\n  jurisdiction\n  instructions\n  emailTemplate {\n    __typename\n    subject\n    body\n  }\n}"

  internal static let possibleTypes = ["AssistedPayload"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("toAddress", type: .scalar(String.self)),
    GraphQLField("unsubscribeUrl", type: .scalar(String.self)),
    GraphQLField("unsubscribeMailto", type: .scalar(String.self)),
    GraphQLField("contact", type: .object(Contact.selections)),
    GraphQLField("jurisdiction", type: .scalar(String.self)),
    GraphQLField("instructions", type: .scalar(String.self)),
    GraphQLField("emailTemplate", type: .object(EmailTemplate.selections)),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(toAddress: String? = nil, unsubscribeUrl: String? = nil, unsubscribeMailto: String? = nil, contact: Contact? = nil, jurisdiction: String? = nil, instructions: String? = nil, emailTemplate: EmailTemplate? = nil) {
    self.init(snapshot: ["__typename": "AssistedPayload", "toAddress": toAddress, "unsubscribeUrl": unsubscribeUrl, "unsubscribeMailto": unsubscribeMailto, "contact": contact.flatMap { $0.snapshot }, "jurisdiction": jurisdiction, "instructions": instructions, "emailTemplate": emailTemplate.flatMap { $0.snapshot }])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var toAddress: String? {
    get {
      return snapshot["toAddress"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "toAddress")
    }
  }

  internal var unsubscribeUrl: String? {
    get {
      return snapshot["unsubscribeUrl"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "unsubscribeUrl")
    }
  }

  internal var unsubscribeMailto: String? {
    get {
      return snapshot["unsubscribeMailto"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "unsubscribeMailto")
    }
  }

  internal var contact: Contact? {
    get {
      return (snapshot["contact"] as? Snapshot).flatMap { Contact(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "contact")
    }
  }

  internal var jurisdiction: String? {
    get {
      return snapshot["jurisdiction"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "jurisdiction")
    }
  }

  internal var instructions: String? {
    get {
      return snapshot["instructions"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "instructions")
    }
  }

  internal var emailTemplate: EmailTemplate? {
    get {
      return (snapshot["emailTemplate"] as? Snapshot).flatMap { EmailTemplate(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "emailTemplate")
    }
  }

  internal struct Contact: GraphQLSelectionSet {
    internal static let possibleTypes = ["ActionContact"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("email", type: .scalar(String.self)),
      GraphQLField("phone", type: .scalar(String.self)),
      GraphQLField("address", type: .scalar(String.self)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(email: String? = nil, phone: String? = nil, address: String? = nil) {
      self.init(snapshot: ["__typename": "ActionContact", "email": email, "phone": phone, "address": address])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var email: String? {
      get {
        return snapshot["email"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "email")
      }
    }

    internal var phone: String? {
      get {
        return snapshot["phone"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "phone")
      }
    }

    internal var address: String? {
      get {
        return snapshot["address"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "address")
      }
    }
  }

  internal struct EmailTemplate: GraphQLSelectionSet {
    internal static let possibleTypes = ["AssistedEmailTemplate"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("subject", type: .scalar(String.self)),
      GraphQLField("body", type: .nonNull(.scalar(String.self))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(subject: String? = nil, body: String) {
      self.init(snapshot: ["__typename": "AssistedEmailTemplate", "subject": subject, "body": body])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var subject: String? {
      get {
        return snapshot["subject"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "subject")
      }
    }

    internal var body: String {
      get {
        return snapshot["body"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "body")
      }
    }
  }
}

internal struct ActionFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment ActionFields on Action {\n  __typename\n  id\n  virtualPresenceId\n  dataHolderId\n  intent\n  additionalInfo\n  fulfilmentMethod\n  status\n  assistedPayload {\n    __typename\n    ...AssistedPayloadFields\n  }\n  initiatedAtEpochMs\n  completedAtEpochMs\n  owner\n  version\n  createdAtEpochMs\n  updatedAtEpochMs\n}"

  internal static let possibleTypes = ["Action"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("dataHolderId", type: .scalar(GraphQLID.self)),
    GraphQLField("intent", type: .nonNull(.scalar(ActionIntent.self))),
    GraphQLField("additionalInfo", type: .scalar(String.self)),
    GraphQLField("fulfilmentMethod", type: .nonNull(.scalar(ActionFulfilmentMethod.self))),
    GraphQLField("status", type: .nonNull(.scalar(ActionStatus.self))),
    GraphQLField("assistedPayload", type: .object(AssistedPayload.selections)),
    GraphQLField("initiatedAtEpochMs", type: .scalar(Double.self)),
    GraphQLField("completedAtEpochMs", type: .scalar(Double.self)),
    GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("version", type: .nonNull(.scalar(Int.self))),
    GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(id: GraphQLID, virtualPresenceId: GraphQLID, dataHolderId: GraphQLID? = nil, intent: ActionIntent, additionalInfo: String? = nil, fulfilmentMethod: ActionFulfilmentMethod, status: ActionStatus, assistedPayload: AssistedPayload? = nil, initiatedAtEpochMs: Double? = nil, completedAtEpochMs: Double? = nil, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
    self.init(snapshot: ["__typename": "Action", "id": id, "virtualPresenceId": virtualPresenceId, "dataHolderId": dataHolderId, "intent": intent, "additionalInfo": additionalInfo, "fulfilmentMethod": fulfilmentMethod, "status": status, "assistedPayload": assistedPayload.flatMap { $0.snapshot }, "initiatedAtEpochMs": initiatedAtEpochMs, "completedAtEpochMs": completedAtEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var id: GraphQLID {
    get {
      return snapshot["id"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "id")
    }
  }

  internal var virtualPresenceId: GraphQLID {
    get {
      return snapshot["virtualPresenceId"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "virtualPresenceId")
    }
  }

  internal var dataHolderId: GraphQLID? {
    get {
      return snapshot["dataHolderId"] as? GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "dataHolderId")
    }
  }

  internal var intent: ActionIntent {
    get {
      return snapshot["intent"]! as! ActionIntent
    }
    set {
      snapshot.updateValue(newValue, forKey: "intent")
    }
  }

  internal var additionalInfo: String? {
    get {
      return snapshot["additionalInfo"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "additionalInfo")
    }
  }

  internal var fulfilmentMethod: ActionFulfilmentMethod {
    get {
      return snapshot["fulfilmentMethod"]! as! ActionFulfilmentMethod
    }
    set {
      snapshot.updateValue(newValue, forKey: "fulfilmentMethod")
    }
  }

  internal var status: ActionStatus {
    get {
      return snapshot["status"]! as! ActionStatus
    }
    set {
      snapshot.updateValue(newValue, forKey: "status")
    }
  }

  internal var assistedPayload: AssistedPayload? {
    get {
      return (snapshot["assistedPayload"] as? Snapshot).flatMap { AssistedPayload(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "assistedPayload")
    }
  }

  internal var initiatedAtEpochMs: Double? {
    get {
      return snapshot["initiatedAtEpochMs"] as? Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "initiatedAtEpochMs")
    }
  }

  internal var completedAtEpochMs: Double? {
    get {
      return snapshot["completedAtEpochMs"] as? Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "completedAtEpochMs")
    }
  }

  internal var owner: GraphQLID {
    get {
      return snapshot["owner"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "owner")
    }
  }

  internal var version: Int {
    get {
      return snapshot["version"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "version")
    }
  }

  internal var createdAtEpochMs: Double {
    get {
      return snapshot["createdAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
    }
  }

  internal var updatedAtEpochMs: Double {
    get {
      return snapshot["updatedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
    }
  }

  internal struct AssistedPayload: GraphQLSelectionSet {
    internal static let possibleTypes = ["AssistedPayload"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("toAddress", type: .scalar(String.self)),
      GraphQLField("unsubscribeUrl", type: .scalar(String.self)),
      GraphQLField("unsubscribeMailto", type: .scalar(String.self)),
      GraphQLField("contact", type: .object(Contact.selections)),
      GraphQLField("jurisdiction", type: .scalar(String.self)),
      GraphQLField("instructions", type: .scalar(String.self)),
      GraphQLField("emailTemplate", type: .object(EmailTemplate.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(toAddress: String? = nil, unsubscribeUrl: String? = nil, unsubscribeMailto: String? = nil, contact: Contact? = nil, jurisdiction: String? = nil, instructions: String? = nil, emailTemplate: EmailTemplate? = nil) {
      self.init(snapshot: ["__typename": "AssistedPayload", "toAddress": toAddress, "unsubscribeUrl": unsubscribeUrl, "unsubscribeMailto": unsubscribeMailto, "contact": contact.flatMap { $0.snapshot }, "jurisdiction": jurisdiction, "instructions": instructions, "emailTemplate": emailTemplate.flatMap { $0.snapshot }])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var toAddress: String? {
      get {
        return snapshot["toAddress"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "toAddress")
      }
    }

    internal var unsubscribeUrl: String? {
      get {
        return snapshot["unsubscribeUrl"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "unsubscribeUrl")
      }
    }

    internal var unsubscribeMailto: String? {
      get {
        return snapshot["unsubscribeMailto"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "unsubscribeMailto")
      }
    }

    internal var contact: Contact? {
      get {
        return (snapshot["contact"] as? Snapshot).flatMap { Contact(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "contact")
      }
    }

    internal var jurisdiction: String? {
      get {
        return snapshot["jurisdiction"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "jurisdiction")
      }
    }

    internal var instructions: String? {
      get {
        return snapshot["instructions"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "instructions")
      }
    }

    internal var emailTemplate: EmailTemplate? {
      get {
        return (snapshot["emailTemplate"] as? Snapshot).flatMap { EmailTemplate(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "emailTemplate")
      }
    }

    internal var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    internal struct Fragments {
      internal var snapshot: Snapshot

      internal var assistedPayloadFields: AssistedPayloadFields {
        get {
          return AssistedPayloadFields(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }

    internal struct Contact: GraphQLSelectionSet {
      internal static let possibleTypes = ["ActionContact"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("phone", type: .scalar(String.self)),
        GraphQLField("address", type: .scalar(String.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(email: String? = nil, phone: String? = nil, address: String? = nil) {
        self.init(snapshot: ["__typename": "ActionContact", "email": email, "phone": phone, "address": address])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      internal var phone: String? {
        get {
          return snapshot["phone"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "phone")
        }
      }

      internal var address: String? {
        get {
          return snapshot["address"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "address")
        }
      }
    }

    internal struct EmailTemplate: GraphQLSelectionSet {
      internal static let possibleTypes = ["AssistedEmailTemplate"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("subject", type: .scalar(String.self)),
        GraphQLField("body", type: .nonNull(.scalar(String.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(subject: String? = nil, body: String) {
        self.init(snapshot: ["__typename": "AssistedEmailTemplate", "subject": subject, "body": body])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var subject: String? {
        get {
          return snapshot["subject"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "subject")
        }
      }

      internal var body: String {
        get {
          return snapshot["body"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "body")
        }
      }
    }
  }
}

internal struct AvailableActionFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment AvailableActionFields on AvailableAction {\n  __typename\n  intent\n  additionalInfo\n  fulfilmentMethod\n  origin\n  title\n  description\n}"

  internal static let possibleTypes = ["AvailableAction"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("intent", type: .nonNull(.scalar(ActionIntent.self))),
    GraphQLField("additionalInfo", type: .scalar(String.self)),
    GraphQLField("fulfilmentMethod", type: .nonNull(.scalar(ActionFulfilmentMethod.self))),
    GraphQLField("origin", type: .nonNull(.scalar(ActionOrigin.self))),
    GraphQLField("title", type: .scalar(String.self)),
    GraphQLField("description", type: .scalar(String.self)),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(intent: ActionIntent, additionalInfo: String? = nil, fulfilmentMethod: ActionFulfilmentMethod, origin: ActionOrigin, title: String? = nil, description: String? = nil) {
    self.init(snapshot: ["__typename": "AvailableAction", "intent": intent, "additionalInfo": additionalInfo, "fulfilmentMethod": fulfilmentMethod, "origin": origin, "title": title, "description": description])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var intent: ActionIntent {
    get {
      return snapshot["intent"]! as! ActionIntent
    }
    set {
      snapshot.updateValue(newValue, forKey: "intent")
    }
  }

  internal var additionalInfo: String? {
    get {
      return snapshot["additionalInfo"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "additionalInfo")
    }
  }

  internal var fulfilmentMethod: ActionFulfilmentMethod {
    get {
      return snapshot["fulfilmentMethod"]! as! ActionFulfilmentMethod
    }
    set {
      snapshot.updateValue(newValue, forKey: "fulfilmentMethod")
    }
  }

  internal var origin: ActionOrigin {
    get {
      return snapshot["origin"]! as! ActionOrigin
    }
    set {
      snapshot.updateValue(newValue, forKey: "origin")
    }
  }

  internal var title: String? {
    get {
      return snapshot["title"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "title")
    }
  }

  internal var description: String? {
    get {
      return snapshot["description"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "description")
    }
  }
}

internal struct AnalysisResultDataFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment AnalysisResultDataFields on AnalysisResultData {\n  __typename\n  privacyScore {\n    __typename\n    score\n    breakdown {\n      __typename\n      aspect\n      contribution\n    }\n    coverage {\n      __typename\n      evaluated\n      total\n    }\n  }\n  privacySummary {\n    __typename\n    bulletPoints\n    sourceUrl\n    sourceLastUpdated\n  }\n  categories {\n    __typename\n    category\n    collected\n    dataLabels\n    sharedWithThirdParties\n    monetized\n    retained\n    retention {\n      __typename\n      style\n      timeInDays\n      additionalInfo\n    }\n    userCanOptOut\n    requiredForService\n    requiredForLaw\n  }\n  capabilities {\n    __typename\n    supportsAccountCreation\n    supportsAccountDeletion\n    supportsDataDeletionRequests\n    supportsDataExport\n    supportsSubscriptions\n    sellsPersonalInformation\n    usesCookiesOrTracking\n    supportsTwoFactorAuth\n  }\n  riskIndicators {\n    __typename\n    dataCollectionBreadth\n    collectsSensitiveDataForNonEssentialPurposes\n    sellsPersonalInformation\n    maxRetentionDays\n    hasIndefiniteRetention\n    encryptionPractices\n    breachRisk\n  }\n  organizationIdentity {\n    __typename\n    brandName\n    companyName\n    primaryCategory\n    categories\n  }\n  attribution\n}"

  internal static let possibleTypes = ["AnalysisResultData"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("privacyScore", type: .object(PrivacyScore.selections)),
    GraphQLField("privacySummary", type: .nonNull(.object(PrivacySummary.selections))),
    GraphQLField("categories", type: .nonNull(.list(.nonNull(.object(Category.selections))))),
    GraphQLField("capabilities", type: .nonNull(.object(Capability.selections))),
    GraphQLField("riskIndicators", type: .nonNull(.object(RiskIndicator.selections))),
    GraphQLField("organizationIdentity", type: .object(OrganizationIdentity.selections)),
    GraphQLField("attribution", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(privacyScore: PrivacyScore? = nil, privacySummary: PrivacySummary, categories: [Category], capabilities: Capability, riskIndicators: RiskIndicator, organizationIdentity: OrganizationIdentity? = nil, attribution: [String]) {
    self.init(snapshot: ["__typename": "AnalysisResultData", "privacyScore": privacyScore.flatMap { $0.snapshot }, "privacySummary": privacySummary.snapshot, "categories": categories.map { $0.snapshot }, "capabilities": capabilities.snapshot, "riskIndicators": riskIndicators.snapshot, "organizationIdentity": organizationIdentity.flatMap { $0.snapshot }, "attribution": attribution])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var privacyScore: PrivacyScore? {
    get {
      return (snapshot["privacyScore"] as? Snapshot).flatMap { PrivacyScore(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "privacyScore")
    }
  }

  internal var privacySummary: PrivacySummary {
    get {
      return PrivacySummary(snapshot: snapshot["privacySummary"]! as! Snapshot)
    }
    set {
      snapshot.updateValue(newValue.snapshot, forKey: "privacySummary")
    }
  }

  internal var categories: [Category] {
    get {
      return (snapshot["categories"] as! [Snapshot]).map { Category(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "categories")
    }
  }

  internal var capabilities: Capability {
    get {
      return Capability(snapshot: snapshot["capabilities"]! as! Snapshot)
    }
    set {
      snapshot.updateValue(newValue.snapshot, forKey: "capabilities")
    }
  }

  internal var riskIndicators: RiskIndicator {
    get {
      return RiskIndicator(snapshot: snapshot["riskIndicators"]! as! Snapshot)
    }
    set {
      snapshot.updateValue(newValue.snapshot, forKey: "riskIndicators")
    }
  }

  internal var organizationIdentity: OrganizationIdentity? {
    get {
      return (snapshot["organizationIdentity"] as? Snapshot).flatMap { OrganizationIdentity(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "organizationIdentity")
    }
  }

  internal var attribution: [String] {
    get {
      return snapshot["attribution"]! as! [String]
    }
    set {
      snapshot.updateValue(newValue, forKey: "attribution")
    }
  }

  internal struct PrivacyScore: GraphQLSelectionSet {
    internal static let possibleTypes = ["PrivacyScore"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("score", type: .nonNull(.scalar(Double.self))),
      GraphQLField("breakdown", type: .nonNull(.list(.nonNull(.object(Breakdown.selections))))),
      GraphQLField("coverage", type: .nonNull(.object(Coverage.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(score: Double, breakdown: [Breakdown], coverage: Coverage) {
      self.init(snapshot: ["__typename": "PrivacyScore", "score": score, "breakdown": breakdown.map { $0.snapshot }, "coverage": coverage.snapshot])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var score: Double {
      get {
        return snapshot["score"]! as! Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "score")
      }
    }

    internal var breakdown: [Breakdown] {
      get {
        return (snapshot["breakdown"] as! [Snapshot]).map { Breakdown(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "breakdown")
      }
    }

    internal var coverage: Coverage {
      get {
        return Coverage(snapshot: snapshot["coverage"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "coverage")
      }
    }

    internal struct Breakdown: GraphQLSelectionSet {
      internal static let possibleTypes = ["ScoreContribution"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("aspect", type: .nonNull(.scalar(String.self))),
        GraphQLField("contribution", type: .nonNull(.scalar(Double.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(aspect: String, contribution: Double) {
        self.init(snapshot: ["__typename": "ScoreContribution", "aspect": aspect, "contribution": contribution])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var aspect: String {
        get {
          return snapshot["aspect"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "aspect")
        }
      }

      internal var contribution: Double {
        get {
          return snapshot["contribution"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "contribution")
        }
      }
    }

    internal struct Coverage: GraphQLSelectionSet {
      internal static let possibleTypes = ["ScoreCoverage"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("evaluated", type: .nonNull(.scalar(Int.self))),
        GraphQLField("total", type: .nonNull(.scalar(Int.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(evaluated: Int, total: Int) {
        self.init(snapshot: ["__typename": "ScoreCoverage", "evaluated": evaluated, "total": total])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var evaluated: Int {
        get {
          return snapshot["evaluated"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "evaluated")
        }
      }

      internal var total: Int {
        get {
          return snapshot["total"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "total")
        }
      }
    }
  }

  internal struct PrivacySummary: GraphQLSelectionSet {
    internal static let possibleTypes = ["PrivacySummary"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("bulletPoints", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
      GraphQLField("sourceUrl", type: .nonNull(.scalar(String.self))),
      GraphQLField("sourceLastUpdated", type: .scalar(String.self)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(bulletPoints: [String], sourceUrl: String, sourceLastUpdated: String? = nil) {
      self.init(snapshot: ["__typename": "PrivacySummary", "bulletPoints": bulletPoints, "sourceUrl": sourceUrl, "sourceLastUpdated": sourceLastUpdated])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var bulletPoints: [String] {
      get {
        return snapshot["bulletPoints"]! as! [String]
      }
      set {
        snapshot.updateValue(newValue, forKey: "bulletPoints")
      }
    }

    internal var sourceUrl: String {
      get {
        return snapshot["sourceUrl"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "sourceUrl")
      }
    }

    internal var sourceLastUpdated: String? {
      get {
        return snapshot["sourceLastUpdated"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "sourceLastUpdated")
      }
    }
  }

  internal struct Category: GraphQLSelectionSet {
    internal static let possibleTypes = ["CategorySignals"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("category", type: .nonNull(.scalar(DataCategory.self))),
      GraphQLField("collected", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("dataLabels", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
      GraphQLField("sharedWithThirdParties", type: .nonNull(.scalar(ShareStyle.self))),
      GraphQLField("monetized", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("retained", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("retention", type: .object(Retention.selections)),
      GraphQLField("userCanOptOut", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("requiredForService", type: .scalar(SignalValue.self)),
      GraphQLField("requiredForLaw", type: .scalar(SignalValue.self)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(category: DataCategory, collected: SignalValue, dataLabels: [String], sharedWithThirdParties: ShareStyle, monetized: SignalValue, retained: SignalValue, retention: Retention? = nil, userCanOptOut: SignalValue, requiredForService: SignalValue? = nil, requiredForLaw: SignalValue? = nil) {
      self.init(snapshot: ["__typename": "CategorySignals", "category": category, "collected": collected, "dataLabels": dataLabels, "sharedWithThirdParties": sharedWithThirdParties, "monetized": monetized, "retained": retained, "retention": retention.flatMap { $0.snapshot }, "userCanOptOut": userCanOptOut, "requiredForService": requiredForService, "requiredForLaw": requiredForLaw])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var category: DataCategory {
      get {
        return snapshot["category"]! as! DataCategory
      }
      set {
        snapshot.updateValue(newValue, forKey: "category")
      }
    }

    internal var collected: SignalValue {
      get {
        return snapshot["collected"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "collected")
      }
    }

    internal var dataLabels: [String] {
      get {
        return snapshot["dataLabels"]! as! [String]
      }
      set {
        snapshot.updateValue(newValue, forKey: "dataLabels")
      }
    }

    internal var sharedWithThirdParties: ShareStyle {
      get {
        return snapshot["sharedWithThirdParties"]! as! ShareStyle
      }
      set {
        snapshot.updateValue(newValue, forKey: "sharedWithThirdParties")
      }
    }

    internal var monetized: SignalValue {
      get {
        return snapshot["monetized"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "monetized")
      }
    }

    internal var retained: SignalValue {
      get {
        return snapshot["retained"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "retained")
      }
    }

    internal var retention: Retention? {
      get {
        return (snapshot["retention"] as? Snapshot).flatMap { Retention(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "retention")
      }
    }

    internal var userCanOptOut: SignalValue {
      get {
        return snapshot["userCanOptOut"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "userCanOptOut")
      }
    }

    internal var requiredForService: SignalValue? {
      get {
        return snapshot["requiredForService"] as? SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "requiredForService")
      }
    }

    internal var requiredForLaw: SignalValue? {
      get {
        return snapshot["requiredForLaw"] as? SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "requiredForLaw")
      }
    }

    internal struct Retention: GraphQLSelectionSet {
      internal static let possibleTypes = ["RetentionInfo"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("style", type: .nonNull(.scalar(RetentionStyle.self))),
        GraphQLField("timeInDays", type: .scalar(Int.self)),
        GraphQLField("additionalInfo", type: .scalar(String.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(style: RetentionStyle, timeInDays: Int? = nil, additionalInfo: String? = nil) {
        self.init(snapshot: ["__typename": "RetentionInfo", "style": style, "timeInDays": timeInDays, "additionalInfo": additionalInfo])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var style: RetentionStyle {
        get {
          return snapshot["style"]! as! RetentionStyle
        }
        set {
          snapshot.updateValue(newValue, forKey: "style")
        }
      }

      internal var timeInDays: Int? {
        get {
          return snapshot["timeInDays"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "timeInDays")
        }
      }

      internal var additionalInfo: String? {
        get {
          return snapshot["additionalInfo"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "additionalInfo")
        }
      }
    }
  }

  internal struct Capability: GraphQLSelectionSet {
    internal static let possibleTypes = ["CapabilitySignals"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("supportsAccountCreation", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("supportsAccountDeletion", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("supportsDataDeletionRequests", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("supportsDataExport", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("supportsSubscriptions", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("sellsPersonalInformation", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("usesCookiesOrTracking", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("supportsTwoFactorAuth", type: .nonNull(.scalar(SignalValue.self))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(supportsAccountCreation: SignalValue, supportsAccountDeletion: SignalValue, supportsDataDeletionRequests: SignalValue, supportsDataExport: SignalValue, supportsSubscriptions: SignalValue, sellsPersonalInformation: SignalValue, usesCookiesOrTracking: SignalValue, supportsTwoFactorAuth: SignalValue) {
      self.init(snapshot: ["__typename": "CapabilitySignals", "supportsAccountCreation": supportsAccountCreation, "supportsAccountDeletion": supportsAccountDeletion, "supportsDataDeletionRequests": supportsDataDeletionRequests, "supportsDataExport": supportsDataExport, "supportsSubscriptions": supportsSubscriptions, "sellsPersonalInformation": sellsPersonalInformation, "usesCookiesOrTracking": usesCookiesOrTracking, "supportsTwoFactorAuth": supportsTwoFactorAuth])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var supportsAccountCreation: SignalValue {
      get {
        return snapshot["supportsAccountCreation"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "supportsAccountCreation")
      }
    }

    internal var supportsAccountDeletion: SignalValue {
      get {
        return snapshot["supportsAccountDeletion"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "supportsAccountDeletion")
      }
    }

    internal var supportsDataDeletionRequests: SignalValue {
      get {
        return snapshot["supportsDataDeletionRequests"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "supportsDataDeletionRequests")
      }
    }

    internal var supportsDataExport: SignalValue {
      get {
        return snapshot["supportsDataExport"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "supportsDataExport")
      }
    }

    internal var supportsSubscriptions: SignalValue {
      get {
        return snapshot["supportsSubscriptions"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "supportsSubscriptions")
      }
    }

    internal var sellsPersonalInformation: SignalValue {
      get {
        return snapshot["sellsPersonalInformation"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "sellsPersonalInformation")
      }
    }

    internal var usesCookiesOrTracking: SignalValue {
      get {
        return snapshot["usesCookiesOrTracking"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "usesCookiesOrTracking")
      }
    }

    internal var supportsTwoFactorAuth: SignalValue {
      get {
        return snapshot["supportsTwoFactorAuth"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "supportsTwoFactorAuth")
      }
    }
  }

  internal struct RiskIndicator: GraphQLSelectionSet {
    internal static let possibleTypes = ["RiskIndicators"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("dataCollectionBreadth", type: .nonNull(.scalar(Int.self))),
      GraphQLField("collectsSensitiveDataForNonEssentialPurposes", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("sellsPersonalInformation", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("maxRetentionDays", type: .scalar(Int.self)),
      GraphQLField("hasIndefiniteRetention", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("encryptionPractices", type: .nonNull(.scalar(SignalValue.self))),
      GraphQLField("breachRisk", type: .nonNull(.scalar(SignalValue.self))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(dataCollectionBreadth: Int, collectsSensitiveDataForNonEssentialPurposes: SignalValue, sellsPersonalInformation: SignalValue, maxRetentionDays: Int? = nil, hasIndefiniteRetention: SignalValue, encryptionPractices: SignalValue, breachRisk: SignalValue) {
      self.init(snapshot: ["__typename": "RiskIndicators", "dataCollectionBreadth": dataCollectionBreadth, "collectsSensitiveDataForNonEssentialPurposes": collectsSensitiveDataForNonEssentialPurposes, "sellsPersonalInformation": sellsPersonalInformation, "maxRetentionDays": maxRetentionDays, "hasIndefiniteRetention": hasIndefiniteRetention, "encryptionPractices": encryptionPractices, "breachRisk": breachRisk])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var dataCollectionBreadth: Int {
      get {
        return snapshot["dataCollectionBreadth"]! as! Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "dataCollectionBreadth")
      }
    }

    internal var collectsSensitiveDataForNonEssentialPurposes: SignalValue {
      get {
        return snapshot["collectsSensitiveDataForNonEssentialPurposes"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "collectsSensitiveDataForNonEssentialPurposes")
      }
    }

    internal var sellsPersonalInformation: SignalValue {
      get {
        return snapshot["sellsPersonalInformation"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "sellsPersonalInformation")
      }
    }

    internal var maxRetentionDays: Int? {
      get {
        return snapshot["maxRetentionDays"] as? Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "maxRetentionDays")
      }
    }

    internal var hasIndefiniteRetention: SignalValue {
      get {
        return snapshot["hasIndefiniteRetention"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "hasIndefiniteRetention")
      }
    }

    internal var encryptionPractices: SignalValue {
      get {
        return snapshot["encryptionPractices"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "encryptionPractices")
      }
    }

    internal var breachRisk: SignalValue {
      get {
        return snapshot["breachRisk"]! as! SignalValue
      }
      set {
        snapshot.updateValue(newValue, forKey: "breachRisk")
      }
    }
  }

  internal struct OrganizationIdentity: GraphQLSelectionSet {
    internal static let possibleTypes = ["OrganizationIdentity"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("brandName", type: .scalar(String.self)),
      GraphQLField("companyName", type: .scalar(String.self)),
      GraphQLField("primaryCategory", type: .scalar(OrganizationCategory.self)),
      GraphQLField("categories", type: .nonNull(.list(.nonNull(.scalar(OrganizationCategory.self))))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(brandName: String? = nil, companyName: String? = nil, primaryCategory: OrganizationCategory? = nil, categories: [OrganizationCategory]) {
      self.init(snapshot: ["__typename": "OrganizationIdentity", "brandName": brandName, "companyName": companyName, "primaryCategory": primaryCategory, "categories": categories])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var brandName: String? {
      get {
        return snapshot["brandName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "brandName")
      }
    }

    internal var companyName: String? {
      get {
        return snapshot["companyName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "companyName")
      }
    }

    internal var primaryCategory: OrganizationCategory? {
      get {
        return snapshot["primaryCategory"] as? OrganizationCategory
      }
      set {
        snapshot.updateValue(newValue, forKey: "primaryCategory")
      }
    }

    internal var categories: [OrganizationCategory] {
      get {
        return snapshot["categories"]! as! [OrganizationCategory]
      }
      set {
        snapshot.updateValue(newValue, forKey: "categories")
      }
    }
  }
}

internal struct AnalysisResultFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment AnalysisResultFields on AnalysisResult {\n  __typename\n  id\n  virtualPresenceId\n  dataHolderIdentifier\n  status\n  lastAnalyzedAtEpochMs\n  data {\n    __typename\n    ...AnalysisResultDataFields\n  }\n  owner\n  version\n  createdAtEpochMs\n  updatedAtEpochMs\n}"

  internal static let possibleTypes = ["AnalysisResult"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("dataHolderIdentifier", type: .nonNull(.scalar(String.self))),
    GraphQLField("status", type: .nonNull(.scalar(AnalysisResultStatus.self))),
    GraphQLField("lastAnalyzedAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("data", type: .object(Datum.selections)),
    GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("version", type: .nonNull(.scalar(Int.self))),
    GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(id: GraphQLID, virtualPresenceId: GraphQLID, dataHolderIdentifier: String, status: AnalysisResultStatus, lastAnalyzedAtEpochMs: Double, data: Datum? = nil, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
    self.init(snapshot: ["__typename": "AnalysisResult", "id": id, "virtualPresenceId": virtualPresenceId, "dataHolderIdentifier": dataHolderIdentifier, "status": status, "lastAnalyzedAtEpochMs": lastAnalyzedAtEpochMs, "data": data.flatMap { $0.snapshot }, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var id: GraphQLID {
    get {
      return snapshot["id"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "id")
    }
  }

  internal var virtualPresenceId: GraphQLID {
    get {
      return snapshot["virtualPresenceId"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "virtualPresenceId")
    }
  }

  internal var dataHolderIdentifier: String {
    get {
      return snapshot["dataHolderIdentifier"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "dataHolderIdentifier")
    }
  }

  internal var status: AnalysisResultStatus {
    get {
      return snapshot["status"]! as! AnalysisResultStatus
    }
    set {
      snapshot.updateValue(newValue, forKey: "status")
    }
  }

  internal var lastAnalyzedAtEpochMs: Double {
    get {
      return snapshot["lastAnalyzedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "lastAnalyzedAtEpochMs")
    }
  }

  internal var data: Datum? {
    get {
      return (snapshot["data"] as? Snapshot).flatMap { Datum(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "data")
    }
  }

  internal var owner: GraphQLID {
    get {
      return snapshot["owner"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "owner")
    }
  }

  internal var version: Int {
    get {
      return snapshot["version"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "version")
    }
  }

  internal var createdAtEpochMs: Double {
    get {
      return snapshot["createdAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
    }
  }

  internal var updatedAtEpochMs: Double {
    get {
      return snapshot["updatedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
    }
  }

  internal struct Datum: GraphQLSelectionSet {
    internal static let possibleTypes = ["AnalysisResultData"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("privacyScore", type: .object(PrivacyScore.selections)),
      GraphQLField("privacySummary", type: .nonNull(.object(PrivacySummary.selections))),
      GraphQLField("categories", type: .nonNull(.list(.nonNull(.object(Category.selections))))),
      GraphQLField("capabilities", type: .nonNull(.object(Capability.selections))),
      GraphQLField("riskIndicators", type: .nonNull(.object(RiskIndicator.selections))),
      GraphQLField("organizationIdentity", type: .object(OrganizationIdentity.selections)),
      GraphQLField("attribution", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(privacyScore: PrivacyScore? = nil, privacySummary: PrivacySummary, categories: [Category], capabilities: Capability, riskIndicators: RiskIndicator, organizationIdentity: OrganizationIdentity? = nil, attribution: [String]) {
      self.init(snapshot: ["__typename": "AnalysisResultData", "privacyScore": privacyScore.flatMap { $0.snapshot }, "privacySummary": privacySummary.snapshot, "categories": categories.map { $0.snapshot }, "capabilities": capabilities.snapshot, "riskIndicators": riskIndicators.snapshot, "organizationIdentity": organizationIdentity.flatMap { $0.snapshot }, "attribution": attribution])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var privacyScore: PrivacyScore? {
      get {
        return (snapshot["privacyScore"] as? Snapshot).flatMap { PrivacyScore(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "privacyScore")
      }
    }

    internal var privacySummary: PrivacySummary {
      get {
        return PrivacySummary(snapshot: snapshot["privacySummary"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "privacySummary")
      }
    }

    internal var categories: [Category] {
      get {
        return (snapshot["categories"] as! [Snapshot]).map { Category(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "categories")
      }
    }

    internal var capabilities: Capability {
      get {
        return Capability(snapshot: snapshot["capabilities"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "capabilities")
      }
    }

    internal var riskIndicators: RiskIndicator {
      get {
        return RiskIndicator(snapshot: snapshot["riskIndicators"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "riskIndicators")
      }
    }

    internal var organizationIdentity: OrganizationIdentity? {
      get {
        return (snapshot["organizationIdentity"] as? Snapshot).flatMap { OrganizationIdentity(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "organizationIdentity")
      }
    }

    internal var attribution: [String] {
      get {
        return snapshot["attribution"]! as! [String]
      }
      set {
        snapshot.updateValue(newValue, forKey: "attribution")
      }
    }

    internal var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    internal struct Fragments {
      internal var snapshot: Snapshot

      internal var analysisResultDataFields: AnalysisResultDataFields {
        get {
          return AnalysisResultDataFields(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }

    internal struct PrivacyScore: GraphQLSelectionSet {
      internal static let possibleTypes = ["PrivacyScore"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("score", type: .nonNull(.scalar(Double.self))),
        GraphQLField("breakdown", type: .nonNull(.list(.nonNull(.object(Breakdown.selections))))),
        GraphQLField("coverage", type: .nonNull(.object(Coverage.selections))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(score: Double, breakdown: [Breakdown], coverage: Coverage) {
        self.init(snapshot: ["__typename": "PrivacyScore", "score": score, "breakdown": breakdown.map { $0.snapshot }, "coverage": coverage.snapshot])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var score: Double {
        get {
          return snapshot["score"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "score")
        }
      }

      internal var breakdown: [Breakdown] {
        get {
          return (snapshot["breakdown"] as! [Snapshot]).map { Breakdown(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "breakdown")
        }
      }

      internal var coverage: Coverage {
        get {
          return Coverage(snapshot: snapshot["coverage"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "coverage")
        }
      }

      internal struct Breakdown: GraphQLSelectionSet {
        internal static let possibleTypes = ["ScoreContribution"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("aspect", type: .nonNull(.scalar(String.self))),
          GraphQLField("contribution", type: .nonNull(.scalar(Double.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(aspect: String, contribution: Double) {
          self.init(snapshot: ["__typename": "ScoreContribution", "aspect": aspect, "contribution": contribution])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var aspect: String {
          get {
            return snapshot["aspect"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "aspect")
          }
        }

        internal var contribution: Double {
          get {
            return snapshot["contribution"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "contribution")
          }
        }
      }

      internal struct Coverage: GraphQLSelectionSet {
        internal static let possibleTypes = ["ScoreCoverage"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("evaluated", type: .nonNull(.scalar(Int.self))),
          GraphQLField("total", type: .nonNull(.scalar(Int.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(evaluated: Int, total: Int) {
          self.init(snapshot: ["__typename": "ScoreCoverage", "evaluated": evaluated, "total": total])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var evaluated: Int {
          get {
            return snapshot["evaluated"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "evaluated")
          }
        }

        internal var total: Int {
          get {
            return snapshot["total"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "total")
          }
        }
      }
    }

    internal struct PrivacySummary: GraphQLSelectionSet {
      internal static let possibleTypes = ["PrivacySummary"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("bulletPoints", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("sourceUrl", type: .nonNull(.scalar(String.self))),
        GraphQLField("sourceLastUpdated", type: .scalar(String.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(bulletPoints: [String], sourceUrl: String, sourceLastUpdated: String? = nil) {
        self.init(snapshot: ["__typename": "PrivacySummary", "bulletPoints": bulletPoints, "sourceUrl": sourceUrl, "sourceLastUpdated": sourceLastUpdated])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var bulletPoints: [String] {
        get {
          return snapshot["bulletPoints"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "bulletPoints")
        }
      }

      internal var sourceUrl: String {
        get {
          return snapshot["sourceUrl"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sourceUrl")
        }
      }

      internal var sourceLastUpdated: String? {
        get {
          return snapshot["sourceLastUpdated"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sourceLastUpdated")
        }
      }
    }

    internal struct Category: GraphQLSelectionSet {
      internal static let possibleTypes = ["CategorySignals"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(DataCategory.self))),
        GraphQLField("collected", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("dataLabels", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("sharedWithThirdParties", type: .nonNull(.scalar(ShareStyle.self))),
        GraphQLField("monetized", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("retained", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("retention", type: .object(Retention.selections)),
        GraphQLField("userCanOptOut", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("requiredForService", type: .scalar(SignalValue.self)),
        GraphQLField("requiredForLaw", type: .scalar(SignalValue.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(category: DataCategory, collected: SignalValue, dataLabels: [String], sharedWithThirdParties: ShareStyle, monetized: SignalValue, retained: SignalValue, retention: Retention? = nil, userCanOptOut: SignalValue, requiredForService: SignalValue? = nil, requiredForLaw: SignalValue? = nil) {
        self.init(snapshot: ["__typename": "CategorySignals", "category": category, "collected": collected, "dataLabels": dataLabels, "sharedWithThirdParties": sharedWithThirdParties, "monetized": monetized, "retained": retained, "retention": retention.flatMap { $0.snapshot }, "userCanOptOut": userCanOptOut, "requiredForService": requiredForService, "requiredForLaw": requiredForLaw])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var category: DataCategory {
        get {
          return snapshot["category"]! as! DataCategory
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      internal var collected: SignalValue {
        get {
          return snapshot["collected"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "collected")
        }
      }

      internal var dataLabels: [String] {
        get {
          return snapshot["dataLabels"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "dataLabels")
        }
      }

      internal var sharedWithThirdParties: ShareStyle {
        get {
          return snapshot["sharedWithThirdParties"]! as! ShareStyle
        }
        set {
          snapshot.updateValue(newValue, forKey: "sharedWithThirdParties")
        }
      }

      internal var monetized: SignalValue {
        get {
          return snapshot["monetized"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "monetized")
        }
      }

      internal var retained: SignalValue {
        get {
          return snapshot["retained"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "retained")
        }
      }

      internal var retention: Retention? {
        get {
          return (snapshot["retention"] as? Snapshot).flatMap { Retention(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "retention")
        }
      }

      internal var userCanOptOut: SignalValue {
        get {
          return snapshot["userCanOptOut"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "userCanOptOut")
        }
      }

      internal var requiredForService: SignalValue? {
        get {
          return snapshot["requiredForService"] as? SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "requiredForService")
        }
      }

      internal var requiredForLaw: SignalValue? {
        get {
          return snapshot["requiredForLaw"] as? SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "requiredForLaw")
        }
      }

      internal struct Retention: GraphQLSelectionSet {
        internal static let possibleTypes = ["RetentionInfo"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("style", type: .nonNull(.scalar(RetentionStyle.self))),
          GraphQLField("timeInDays", type: .scalar(Int.self)),
          GraphQLField("additionalInfo", type: .scalar(String.self)),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(style: RetentionStyle, timeInDays: Int? = nil, additionalInfo: String? = nil) {
          self.init(snapshot: ["__typename": "RetentionInfo", "style": style, "timeInDays": timeInDays, "additionalInfo": additionalInfo])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var style: RetentionStyle {
          get {
            return snapshot["style"]! as! RetentionStyle
          }
          set {
            snapshot.updateValue(newValue, forKey: "style")
          }
        }

        internal var timeInDays: Int? {
          get {
            return snapshot["timeInDays"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timeInDays")
          }
        }

        internal var additionalInfo: String? {
          get {
            return snapshot["additionalInfo"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "additionalInfo")
          }
        }
      }
    }

    internal struct Capability: GraphQLSelectionSet {
      internal static let possibleTypes = ["CapabilitySignals"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("supportsAccountCreation", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("supportsAccountDeletion", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("supportsDataDeletionRequests", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("supportsDataExport", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("supportsSubscriptions", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("sellsPersonalInformation", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("usesCookiesOrTracking", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("supportsTwoFactorAuth", type: .nonNull(.scalar(SignalValue.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(supportsAccountCreation: SignalValue, supportsAccountDeletion: SignalValue, supportsDataDeletionRequests: SignalValue, supportsDataExport: SignalValue, supportsSubscriptions: SignalValue, sellsPersonalInformation: SignalValue, usesCookiesOrTracking: SignalValue, supportsTwoFactorAuth: SignalValue) {
        self.init(snapshot: ["__typename": "CapabilitySignals", "supportsAccountCreation": supportsAccountCreation, "supportsAccountDeletion": supportsAccountDeletion, "supportsDataDeletionRequests": supportsDataDeletionRequests, "supportsDataExport": supportsDataExport, "supportsSubscriptions": supportsSubscriptions, "sellsPersonalInformation": sellsPersonalInformation, "usesCookiesOrTracking": usesCookiesOrTracking, "supportsTwoFactorAuth": supportsTwoFactorAuth])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var supportsAccountCreation: SignalValue {
        get {
          return snapshot["supportsAccountCreation"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportsAccountCreation")
        }
      }

      internal var supportsAccountDeletion: SignalValue {
        get {
          return snapshot["supportsAccountDeletion"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportsAccountDeletion")
        }
      }

      internal var supportsDataDeletionRequests: SignalValue {
        get {
          return snapshot["supportsDataDeletionRequests"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportsDataDeletionRequests")
        }
      }

      internal var supportsDataExport: SignalValue {
        get {
          return snapshot["supportsDataExport"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportsDataExport")
        }
      }

      internal var supportsSubscriptions: SignalValue {
        get {
          return snapshot["supportsSubscriptions"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportsSubscriptions")
        }
      }

      internal var sellsPersonalInformation: SignalValue {
        get {
          return snapshot["sellsPersonalInformation"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "sellsPersonalInformation")
        }
      }

      internal var usesCookiesOrTracking: SignalValue {
        get {
          return snapshot["usesCookiesOrTracking"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "usesCookiesOrTracking")
        }
      }

      internal var supportsTwoFactorAuth: SignalValue {
        get {
          return snapshot["supportsTwoFactorAuth"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportsTwoFactorAuth")
        }
      }
    }

    internal struct RiskIndicator: GraphQLSelectionSet {
      internal static let possibleTypes = ["RiskIndicators"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("dataCollectionBreadth", type: .nonNull(.scalar(Int.self))),
        GraphQLField("collectsSensitiveDataForNonEssentialPurposes", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("sellsPersonalInformation", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("maxRetentionDays", type: .scalar(Int.self)),
        GraphQLField("hasIndefiniteRetention", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("encryptionPractices", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("breachRisk", type: .nonNull(.scalar(SignalValue.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(dataCollectionBreadth: Int, collectsSensitiveDataForNonEssentialPurposes: SignalValue, sellsPersonalInformation: SignalValue, maxRetentionDays: Int? = nil, hasIndefiniteRetention: SignalValue, encryptionPractices: SignalValue, breachRisk: SignalValue) {
        self.init(snapshot: ["__typename": "RiskIndicators", "dataCollectionBreadth": dataCollectionBreadth, "collectsSensitiveDataForNonEssentialPurposes": collectsSensitiveDataForNonEssentialPurposes, "sellsPersonalInformation": sellsPersonalInformation, "maxRetentionDays": maxRetentionDays, "hasIndefiniteRetention": hasIndefiniteRetention, "encryptionPractices": encryptionPractices, "breachRisk": breachRisk])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var dataCollectionBreadth: Int {
        get {
          return snapshot["dataCollectionBreadth"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "dataCollectionBreadth")
        }
      }

      internal var collectsSensitiveDataForNonEssentialPurposes: SignalValue {
        get {
          return snapshot["collectsSensitiveDataForNonEssentialPurposes"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "collectsSensitiveDataForNonEssentialPurposes")
        }
      }

      internal var sellsPersonalInformation: SignalValue {
        get {
          return snapshot["sellsPersonalInformation"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "sellsPersonalInformation")
        }
      }

      internal var maxRetentionDays: Int? {
        get {
          return snapshot["maxRetentionDays"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "maxRetentionDays")
        }
      }

      internal var hasIndefiniteRetention: SignalValue {
        get {
          return snapshot["hasIndefiniteRetention"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "hasIndefiniteRetention")
        }
      }

      internal var encryptionPractices: SignalValue {
        get {
          return snapshot["encryptionPractices"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "encryptionPractices")
        }
      }

      internal var breachRisk: SignalValue {
        get {
          return snapshot["breachRisk"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "breachRisk")
        }
      }
    }

    internal struct OrganizationIdentity: GraphQLSelectionSet {
      internal static let possibleTypes = ["OrganizationIdentity"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("brandName", type: .scalar(String.self)),
        GraphQLField("companyName", type: .scalar(String.self)),
        GraphQLField("primaryCategory", type: .scalar(OrganizationCategory.self)),
        GraphQLField("categories", type: .nonNull(.list(.nonNull(.scalar(OrganizationCategory.self))))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(brandName: String? = nil, companyName: String? = nil, primaryCategory: OrganizationCategory? = nil, categories: [OrganizationCategory]) {
        self.init(snapshot: ["__typename": "OrganizationIdentity", "brandName": brandName, "companyName": companyName, "primaryCategory": primaryCategory, "categories": categories])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var brandName: String? {
        get {
          return snapshot["brandName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "brandName")
        }
      }

      internal var companyName: String? {
        get {
          return snapshot["companyName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "companyName")
        }
      }

      internal var primaryCategory: OrganizationCategory? {
        get {
          return snapshot["primaryCategory"] as? OrganizationCategory
        }
        set {
          snapshot.updateValue(newValue, forKey: "primaryCategory")
        }
      }

      internal var categories: [OrganizationCategory] {
        get {
          return snapshot["categories"]! as! [OrganizationCategory]
        }
        set {
          snapshot.updateValue(newValue, forKey: "categories")
        }
      }
    }
  }
}

internal struct AnalysisResultUpdateFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment AnalysisResultUpdateFields on AnalysisResultUpdate {\n  __typename\n  id\n  virtualPresenceId\n  dataHolderIdentifier\n  status\n  lastAnalyzedAtEpochMs\n  owner\n  version\n  createdAtEpochMs\n  updatedAtEpochMs\n}"

  internal static let possibleTypes = ["AnalysisResultUpdate"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("dataHolderIdentifier", type: .nonNull(.scalar(String.self))),
    GraphQLField("status", type: .nonNull(.scalar(AnalysisResultStatus.self))),
    GraphQLField("lastAnalyzedAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("version", type: .nonNull(.scalar(Int.self))),
    GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(id: GraphQLID, virtualPresenceId: GraphQLID, dataHolderIdentifier: String, status: AnalysisResultStatus, lastAnalyzedAtEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
    self.init(snapshot: ["__typename": "AnalysisResultUpdate", "id": id, "virtualPresenceId": virtualPresenceId, "dataHolderIdentifier": dataHolderIdentifier, "status": status, "lastAnalyzedAtEpochMs": lastAnalyzedAtEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var id: GraphQLID {
    get {
      return snapshot["id"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "id")
    }
  }

  internal var virtualPresenceId: GraphQLID {
    get {
      return snapshot["virtualPresenceId"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "virtualPresenceId")
    }
  }

  internal var dataHolderIdentifier: String {
    get {
      return snapshot["dataHolderIdentifier"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "dataHolderIdentifier")
    }
  }

  internal var status: AnalysisResultStatus {
    get {
      return snapshot["status"]! as! AnalysisResultStatus
    }
    set {
      snapshot.updateValue(newValue, forKey: "status")
    }
  }

  internal var lastAnalyzedAtEpochMs: Double {
    get {
      return snapshot["lastAnalyzedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "lastAnalyzedAtEpochMs")
    }
  }

  internal var owner: GraphQLID {
    get {
      return snapshot["owner"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "owner")
    }
  }

  internal var version: Int {
    get {
      return snapshot["version"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "version")
    }
  }

  internal var createdAtEpochMs: Double {
    get {
      return snapshot["createdAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
    }
  }

  internal var updatedAtEpochMs: Double {
    get {
      return snapshot["updatedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
    }
  }
}

internal struct DataHolderFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment DataHolderFields on DataHolder {\n  __typename\n  id\n  virtualPresenceId\n  domainName\n  name\n  protectionState\n  complianceConcern\n  mostRecentInteractionEpochMs\n  owner\n  version\n  createdAtEpochMs\n  updatedAtEpochMs\n}"

  internal static let possibleTypes = ["DataHolder"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("domainName", type: .nonNull(.scalar(String.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("protectionState", type: .nonNull(.scalar(DataHolderProtectionState.self))),
    GraphQLField("complianceConcern", type: .nonNull(.scalar(Bool.self))),
    GraphQLField("mostRecentInteractionEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("version", type: .nonNull(.scalar(Int.self))),
    GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(id: GraphQLID, virtualPresenceId: GraphQLID, domainName: String, name: String, protectionState: DataHolderProtectionState, complianceConcern: Bool, mostRecentInteractionEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
    self.init(snapshot: ["__typename": "DataHolder", "id": id, "virtualPresenceId": virtualPresenceId, "domainName": domainName, "name": name, "protectionState": protectionState, "complianceConcern": complianceConcern, "mostRecentInteractionEpochMs": mostRecentInteractionEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var id: GraphQLID {
    get {
      return snapshot["id"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "id")
    }
  }

  internal var virtualPresenceId: GraphQLID {
    get {
      return snapshot["virtualPresenceId"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "virtualPresenceId")
    }
  }

  internal var domainName: String {
    get {
      return snapshot["domainName"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "domainName")
    }
  }

  internal var name: String {
    get {
      return snapshot["name"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  internal var protectionState: DataHolderProtectionState {
    get {
      return snapshot["protectionState"]! as! DataHolderProtectionState
    }
    set {
      snapshot.updateValue(newValue, forKey: "protectionState")
    }
  }

  internal var complianceConcern: Bool {
    get {
      return snapshot["complianceConcern"]! as! Bool
    }
    set {
      snapshot.updateValue(newValue, forKey: "complianceConcern")
    }
  }

  internal var mostRecentInteractionEpochMs: Double {
    get {
      return snapshot["mostRecentInteractionEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "mostRecentInteractionEpochMs")
    }
  }

  internal var owner: GraphQLID {
    get {
      return snapshot["owner"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "owner")
    }
  }

  internal var version: Int {
    get {
      return snapshot["version"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "version")
    }
  }

  internal var createdAtEpochMs: Double {
    get {
      return snapshot["createdAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
    }
  }

  internal var updatedAtEpochMs: Double {
    get {
      return snapshot["updatedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
    }
  }
}

internal struct DataHolderScanSummaryFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment DataHolderScanSummaryFields on DataHolderScanSummary {\n  __typename\n  dataHolderId\n  owner\n  scannedAtEpochMs\n  scanRangeFromEpochMs\n  scanRangeToEpochMs\n  emailCount\n  readCount\n  readRate\n  marketingEmailCount\n  marketingEmailOpened\n  marketingOpenRate\n  categoryBreakdown\n  uncategorizedCount\n}"

  internal static let possibleTypes = ["DataHolderScanSummary"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("dataHolderId", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("scannedAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("scanRangeFromEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("scanRangeToEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("emailCount", type: .nonNull(.scalar(Int.self))),
    GraphQLField("readCount", type: .nonNull(.scalar(Int.self))),
    GraphQLField("readRate", type: .nonNull(.scalar(Double.self))),
    GraphQLField("marketingEmailCount", type: .nonNull(.scalar(Int.self))),
    GraphQLField("marketingEmailOpened", type: .nonNull(.scalar(Int.self))),
    GraphQLField("marketingOpenRate", type: .nonNull(.scalar(Double.self))),
    GraphQLField("categoryBreakdown", type: .nonNull(.scalar(String.self))),
    GraphQLField("uncategorizedCount", type: .nonNull(.scalar(Int.self))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(dataHolderId: GraphQLID, owner: GraphQLID, scannedAtEpochMs: Double, scanRangeFromEpochMs: Double, scanRangeToEpochMs: Double, emailCount: Int, readCount: Int, readRate: Double, marketingEmailCount: Int, marketingEmailOpened: Int, marketingOpenRate: Double, categoryBreakdown: String, uncategorizedCount: Int) {
    self.init(snapshot: ["__typename": "DataHolderScanSummary", "dataHolderId": dataHolderId, "owner": owner, "scannedAtEpochMs": scannedAtEpochMs, "scanRangeFromEpochMs": scanRangeFromEpochMs, "scanRangeToEpochMs": scanRangeToEpochMs, "emailCount": emailCount, "readCount": readCount, "readRate": readRate, "marketingEmailCount": marketingEmailCount, "marketingEmailOpened": marketingEmailOpened, "marketingOpenRate": marketingOpenRate, "categoryBreakdown": categoryBreakdown, "uncategorizedCount": uncategorizedCount])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var dataHolderId: GraphQLID {
    get {
      return snapshot["dataHolderId"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "dataHolderId")
    }
  }

  internal var owner: GraphQLID {
    get {
      return snapshot["owner"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "owner")
    }
  }

  internal var scannedAtEpochMs: Double {
    get {
      return snapshot["scannedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "scannedAtEpochMs")
    }
  }

  internal var scanRangeFromEpochMs: Double {
    get {
      return snapshot["scanRangeFromEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "scanRangeFromEpochMs")
    }
  }

  internal var scanRangeToEpochMs: Double {
    get {
      return snapshot["scanRangeToEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "scanRangeToEpochMs")
    }
  }

  internal var emailCount: Int {
    get {
      return snapshot["emailCount"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "emailCount")
    }
  }

  internal var readCount: Int {
    get {
      return snapshot["readCount"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "readCount")
    }
  }

  internal var readRate: Double {
    get {
      return snapshot["readRate"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "readRate")
    }
  }

  internal var marketingEmailCount: Int {
    get {
      return snapshot["marketingEmailCount"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "marketingEmailCount")
    }
  }

  internal var marketingEmailOpened: Int {
    get {
      return snapshot["marketingEmailOpened"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "marketingEmailOpened")
    }
  }

  internal var marketingOpenRate: Double {
    get {
      return snapshot["marketingOpenRate"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "marketingOpenRate")
    }
  }

  internal var categoryBreakdown: String {
    get {
      return snapshot["categoryBreakdown"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "categoryBreakdown")
    }
  }

  internal var uncategorizedCount: Int {
    get {
      return snapshot["uncategorizedCount"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "uncategorizedCount")
    }
  }
}

internal struct DataHolderUpdateItemFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment DataHolderUpdateItemFields on DataHolderUpdateItem {\n  __typename\n  id\n  virtualPresenceId\n  domainName\n  name\n  protectionState\n  complianceConcern\n  mostRecentInteractionEpochMs\n  owner\n  version\n  createdAtEpochMs\n  updatedAtEpochMs\n  changeType\n}"

  internal static let possibleTypes = ["DataHolderUpdateItem"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("domainName", type: .nonNull(.scalar(String.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("protectionState", type: .nonNull(.scalar(DataHolderProtectionState.self))),
    GraphQLField("complianceConcern", type: .nonNull(.scalar(Bool.self))),
    GraphQLField("mostRecentInteractionEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("version", type: .nonNull(.scalar(Int.self))),
    GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("changeType", type: .nonNull(.scalar(DataHolderChangeType.self))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(id: GraphQLID, virtualPresenceId: GraphQLID, domainName: String, name: String, protectionState: DataHolderProtectionState, complianceConcern: Bool, mostRecentInteractionEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double, changeType: DataHolderChangeType) {
    self.init(snapshot: ["__typename": "DataHolderUpdateItem", "id": id, "virtualPresenceId": virtualPresenceId, "domainName": domainName, "name": name, "protectionState": protectionState, "complianceConcern": complianceConcern, "mostRecentInteractionEpochMs": mostRecentInteractionEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "changeType": changeType])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var id: GraphQLID {
    get {
      return snapshot["id"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "id")
    }
  }

  internal var virtualPresenceId: GraphQLID {
    get {
      return snapshot["virtualPresenceId"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "virtualPresenceId")
    }
  }

  internal var domainName: String {
    get {
      return snapshot["domainName"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "domainName")
    }
  }

  internal var name: String {
    get {
      return snapshot["name"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  internal var protectionState: DataHolderProtectionState {
    get {
      return snapshot["protectionState"]! as! DataHolderProtectionState
    }
    set {
      snapshot.updateValue(newValue, forKey: "protectionState")
    }
  }

  internal var complianceConcern: Bool {
    get {
      return snapshot["complianceConcern"]! as! Bool
    }
    set {
      snapshot.updateValue(newValue, forKey: "complianceConcern")
    }
  }

  internal var mostRecentInteractionEpochMs: Double {
    get {
      return snapshot["mostRecentInteractionEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "mostRecentInteractionEpochMs")
    }
  }

  internal var owner: GraphQLID {
    get {
      return snapshot["owner"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "owner")
    }
  }

  internal var version: Int {
    get {
      return snapshot["version"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "version")
    }
  }

  internal var createdAtEpochMs: Double {
    get {
      return snapshot["createdAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
    }
  }

  internal var updatedAtEpochMs: Double {
    get {
      return snapshot["updatedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
    }
  }

  internal var changeType: DataHolderChangeType {
    get {
      return snapshot["changeType"]! as! DataHolderChangeType
    }
    set {
      snapshot.updateValue(newValue, forKey: "changeType")
    }
  }
}

internal struct DataHoldersUpdateFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment DataHoldersUpdateFields on DataHoldersUpdate {\n  __typename\n  items {\n    __typename\n    ...DataHolderUpdateItemFields\n  }\n  owner\n}"

  internal static let possibleTypes = ["DataHoldersUpdate"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
    GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(items: [Item], owner: GraphQLID) {
    self.init(snapshot: ["__typename": "DataHoldersUpdate", "items": items.map { $0.snapshot }, "owner": owner])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var items: [Item] {
    get {
      return (snapshot["items"] as! [Snapshot]).map { Item(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "items")
    }
  }

  internal var owner: GraphQLID {
    get {
      return snapshot["owner"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "owner")
    }
  }

  internal struct Item: GraphQLSelectionSet {
    internal static let possibleTypes = ["DataHolderUpdateItem"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("virtualPresenceId", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("domainName", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .nonNull(.scalar(String.self))),
      GraphQLField("protectionState", type: .nonNull(.scalar(DataHolderProtectionState.self))),
      GraphQLField("complianceConcern", type: .nonNull(.scalar(Bool.self))),
      GraphQLField("mostRecentInteractionEpochMs", type: .nonNull(.scalar(Double.self))),
      GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("version", type: .nonNull(.scalar(Int.self))),
      GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
      GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      GraphQLField("changeType", type: .nonNull(.scalar(DataHolderChangeType.self))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(id: GraphQLID, virtualPresenceId: GraphQLID, domainName: String, name: String, protectionState: DataHolderProtectionState, complianceConcern: Bool, mostRecentInteractionEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double, changeType: DataHolderChangeType) {
      self.init(snapshot: ["__typename": "DataHolderUpdateItem", "id": id, "virtualPresenceId": virtualPresenceId, "domainName": domainName, "name": name, "protectionState": protectionState, "complianceConcern": complianceConcern, "mostRecentInteractionEpochMs": mostRecentInteractionEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "changeType": changeType])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var id: GraphQLID {
      get {
        return snapshot["id"]! as! GraphQLID
      }
      set {
        snapshot.updateValue(newValue, forKey: "id")
      }
    }

    internal var virtualPresenceId: GraphQLID {
      get {
        return snapshot["virtualPresenceId"]! as! GraphQLID
      }
      set {
        snapshot.updateValue(newValue, forKey: "virtualPresenceId")
      }
    }

    internal var domainName: String {
      get {
        return snapshot["domainName"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "domainName")
      }
    }

    internal var name: String {
      get {
        return snapshot["name"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }

    internal var protectionState: DataHolderProtectionState {
      get {
        return snapshot["protectionState"]! as! DataHolderProtectionState
      }
      set {
        snapshot.updateValue(newValue, forKey: "protectionState")
      }
    }

    internal var complianceConcern: Bool {
      get {
        return snapshot["complianceConcern"]! as! Bool
      }
      set {
        snapshot.updateValue(newValue, forKey: "complianceConcern")
      }
    }

    internal var mostRecentInteractionEpochMs: Double {
      get {
        return snapshot["mostRecentInteractionEpochMs"]! as! Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "mostRecentInteractionEpochMs")
      }
    }

    internal var owner: GraphQLID {
      get {
        return snapshot["owner"]! as! GraphQLID
      }
      set {
        snapshot.updateValue(newValue, forKey: "owner")
      }
    }

    internal var version: Int {
      get {
        return snapshot["version"]! as! Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "version")
      }
    }

    internal var createdAtEpochMs: Double {
      get {
        return snapshot["createdAtEpochMs"]! as! Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
      }
    }

    internal var updatedAtEpochMs: Double {
      get {
        return snapshot["updatedAtEpochMs"]! as! Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
      }
    }

    internal var changeType: DataHolderChangeType {
      get {
        return snapshot["changeType"]! as! DataHolderChangeType
      }
      set {
        snapshot.updateValue(newValue, forKey: "changeType")
      }
    }

    internal var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    internal struct Fragments {
      internal var snapshot: Snapshot

      internal var dataHolderUpdateItemFields: DataHolderUpdateItemFields {
        get {
          return DataHolderUpdateItemFields(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }
  }
}

internal struct OrganizationAnalysisFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment OrganizationAnalysisFields on OrganizationAnalysis {\n  __typename\n  id\n  domain\n  status\n  lastAnalyzedAtEpochMs\n  data {\n    __typename\n    ...AnalysisResultDataFields\n  }\n  owner\n  version\n  createdAtEpochMs\n  updatedAtEpochMs\n}"

  internal static let possibleTypes = ["OrganizationAnalysis"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("domain", type: .nonNull(.scalar(String.self))),
    GraphQLField("status", type: .nonNull(.scalar(AnalysisResultStatus.self))),
    GraphQLField("lastAnalyzedAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("data", type: .object(Datum.selections)),
    GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("version", type: .nonNull(.scalar(Int.self))),
    GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(id: GraphQLID, domain: String, status: AnalysisResultStatus, lastAnalyzedAtEpochMs: Double, data: Datum? = nil, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
    self.init(snapshot: ["__typename": "OrganizationAnalysis", "id": id, "domain": domain, "status": status, "lastAnalyzedAtEpochMs": lastAnalyzedAtEpochMs, "data": data.flatMap { $0.snapshot }, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var id: GraphQLID {
    get {
      return snapshot["id"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "id")
    }
  }

  internal var domain: String {
    get {
      return snapshot["domain"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "domain")
    }
  }

  internal var status: AnalysisResultStatus {
    get {
      return snapshot["status"]! as! AnalysisResultStatus
    }
    set {
      snapshot.updateValue(newValue, forKey: "status")
    }
  }

  internal var lastAnalyzedAtEpochMs: Double {
    get {
      return snapshot["lastAnalyzedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "lastAnalyzedAtEpochMs")
    }
  }

  internal var data: Datum? {
    get {
      return (snapshot["data"] as? Snapshot).flatMap { Datum(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue?.snapshot, forKey: "data")
    }
  }

  internal var owner: GraphQLID {
    get {
      return snapshot["owner"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "owner")
    }
  }

  internal var version: Int {
    get {
      return snapshot["version"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "version")
    }
  }

  internal var createdAtEpochMs: Double {
    get {
      return snapshot["createdAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
    }
  }

  internal var updatedAtEpochMs: Double {
    get {
      return snapshot["updatedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
    }
  }

  internal struct Datum: GraphQLSelectionSet {
    internal static let possibleTypes = ["AnalysisResultData"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("privacyScore", type: .object(PrivacyScore.selections)),
      GraphQLField("privacySummary", type: .nonNull(.object(PrivacySummary.selections))),
      GraphQLField("categories", type: .nonNull(.list(.nonNull(.object(Category.selections))))),
      GraphQLField("capabilities", type: .nonNull(.object(Capability.selections))),
      GraphQLField("riskIndicators", type: .nonNull(.object(RiskIndicator.selections))),
      GraphQLField("organizationIdentity", type: .object(OrganizationIdentity.selections)),
      GraphQLField("attribution", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(privacyScore: PrivacyScore? = nil, privacySummary: PrivacySummary, categories: [Category], capabilities: Capability, riskIndicators: RiskIndicator, organizationIdentity: OrganizationIdentity? = nil, attribution: [String]) {
      self.init(snapshot: ["__typename": "AnalysisResultData", "privacyScore": privacyScore.flatMap { $0.snapshot }, "privacySummary": privacySummary.snapshot, "categories": categories.map { $0.snapshot }, "capabilities": capabilities.snapshot, "riskIndicators": riskIndicators.snapshot, "organizationIdentity": organizationIdentity.flatMap { $0.snapshot }, "attribution": attribution])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var privacyScore: PrivacyScore? {
      get {
        return (snapshot["privacyScore"] as? Snapshot).flatMap { PrivacyScore(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "privacyScore")
      }
    }

    internal var privacySummary: PrivacySummary {
      get {
        return PrivacySummary(snapshot: snapshot["privacySummary"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "privacySummary")
      }
    }

    internal var categories: [Category] {
      get {
        return (snapshot["categories"] as! [Snapshot]).map { Category(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "categories")
      }
    }

    internal var capabilities: Capability {
      get {
        return Capability(snapshot: snapshot["capabilities"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "capabilities")
      }
    }

    internal var riskIndicators: RiskIndicator {
      get {
        return RiskIndicator(snapshot: snapshot["riskIndicators"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "riskIndicators")
      }
    }

    internal var organizationIdentity: OrganizationIdentity? {
      get {
        return (snapshot["organizationIdentity"] as? Snapshot).flatMap { OrganizationIdentity(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "organizationIdentity")
      }
    }

    internal var attribution: [String] {
      get {
        return snapshot["attribution"]! as! [String]
      }
      set {
        snapshot.updateValue(newValue, forKey: "attribution")
      }
    }

    internal var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    internal struct Fragments {
      internal var snapshot: Snapshot

      internal var analysisResultDataFields: AnalysisResultDataFields {
        get {
          return AnalysisResultDataFields(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }

    internal struct PrivacyScore: GraphQLSelectionSet {
      internal static let possibleTypes = ["PrivacyScore"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("score", type: .nonNull(.scalar(Double.self))),
        GraphQLField("breakdown", type: .nonNull(.list(.nonNull(.object(Breakdown.selections))))),
        GraphQLField("coverage", type: .nonNull(.object(Coverage.selections))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(score: Double, breakdown: [Breakdown], coverage: Coverage) {
        self.init(snapshot: ["__typename": "PrivacyScore", "score": score, "breakdown": breakdown.map { $0.snapshot }, "coverage": coverage.snapshot])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var score: Double {
        get {
          return snapshot["score"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "score")
        }
      }

      internal var breakdown: [Breakdown] {
        get {
          return (snapshot["breakdown"] as! [Snapshot]).map { Breakdown(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "breakdown")
        }
      }

      internal var coverage: Coverage {
        get {
          return Coverage(snapshot: snapshot["coverage"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "coverage")
        }
      }

      internal struct Breakdown: GraphQLSelectionSet {
        internal static let possibleTypes = ["ScoreContribution"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("aspect", type: .nonNull(.scalar(String.self))),
          GraphQLField("contribution", type: .nonNull(.scalar(Double.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(aspect: String, contribution: Double) {
          self.init(snapshot: ["__typename": "ScoreContribution", "aspect": aspect, "contribution": contribution])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var aspect: String {
          get {
            return snapshot["aspect"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "aspect")
          }
        }

        internal var contribution: Double {
          get {
            return snapshot["contribution"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "contribution")
          }
        }
      }

      internal struct Coverage: GraphQLSelectionSet {
        internal static let possibleTypes = ["ScoreCoverage"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("evaluated", type: .nonNull(.scalar(Int.self))),
          GraphQLField("total", type: .nonNull(.scalar(Int.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(evaluated: Int, total: Int) {
          self.init(snapshot: ["__typename": "ScoreCoverage", "evaluated": evaluated, "total": total])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var evaluated: Int {
          get {
            return snapshot["evaluated"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "evaluated")
          }
        }

        internal var total: Int {
          get {
            return snapshot["total"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "total")
          }
        }
      }
    }

    internal struct PrivacySummary: GraphQLSelectionSet {
      internal static let possibleTypes = ["PrivacySummary"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("bulletPoints", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("sourceUrl", type: .nonNull(.scalar(String.self))),
        GraphQLField("sourceLastUpdated", type: .scalar(String.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(bulletPoints: [String], sourceUrl: String, sourceLastUpdated: String? = nil) {
        self.init(snapshot: ["__typename": "PrivacySummary", "bulletPoints": bulletPoints, "sourceUrl": sourceUrl, "sourceLastUpdated": sourceLastUpdated])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var bulletPoints: [String] {
        get {
          return snapshot["bulletPoints"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "bulletPoints")
        }
      }

      internal var sourceUrl: String {
        get {
          return snapshot["sourceUrl"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sourceUrl")
        }
      }

      internal var sourceLastUpdated: String? {
        get {
          return snapshot["sourceLastUpdated"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "sourceLastUpdated")
        }
      }
    }

    internal struct Category: GraphQLSelectionSet {
      internal static let possibleTypes = ["CategorySignals"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .nonNull(.scalar(DataCategory.self))),
        GraphQLField("collected", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("dataLabels", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
        GraphQLField("sharedWithThirdParties", type: .nonNull(.scalar(ShareStyle.self))),
        GraphQLField("monetized", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("retained", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("retention", type: .object(Retention.selections)),
        GraphQLField("userCanOptOut", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("requiredForService", type: .scalar(SignalValue.self)),
        GraphQLField("requiredForLaw", type: .scalar(SignalValue.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(category: DataCategory, collected: SignalValue, dataLabels: [String], sharedWithThirdParties: ShareStyle, monetized: SignalValue, retained: SignalValue, retention: Retention? = nil, userCanOptOut: SignalValue, requiredForService: SignalValue? = nil, requiredForLaw: SignalValue? = nil) {
        self.init(snapshot: ["__typename": "CategorySignals", "category": category, "collected": collected, "dataLabels": dataLabels, "sharedWithThirdParties": sharedWithThirdParties, "monetized": monetized, "retained": retained, "retention": retention.flatMap { $0.snapshot }, "userCanOptOut": userCanOptOut, "requiredForService": requiredForService, "requiredForLaw": requiredForLaw])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var category: DataCategory {
        get {
          return snapshot["category"]! as! DataCategory
        }
        set {
          snapshot.updateValue(newValue, forKey: "category")
        }
      }

      internal var collected: SignalValue {
        get {
          return snapshot["collected"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "collected")
        }
      }

      internal var dataLabels: [String] {
        get {
          return snapshot["dataLabels"]! as! [String]
        }
        set {
          snapshot.updateValue(newValue, forKey: "dataLabels")
        }
      }

      internal var sharedWithThirdParties: ShareStyle {
        get {
          return snapshot["sharedWithThirdParties"]! as! ShareStyle
        }
        set {
          snapshot.updateValue(newValue, forKey: "sharedWithThirdParties")
        }
      }

      internal var monetized: SignalValue {
        get {
          return snapshot["monetized"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "monetized")
        }
      }

      internal var retained: SignalValue {
        get {
          return snapshot["retained"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "retained")
        }
      }

      internal var retention: Retention? {
        get {
          return (snapshot["retention"] as? Snapshot).flatMap { Retention(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "retention")
        }
      }

      internal var userCanOptOut: SignalValue {
        get {
          return snapshot["userCanOptOut"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "userCanOptOut")
        }
      }

      internal var requiredForService: SignalValue? {
        get {
          return snapshot["requiredForService"] as? SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "requiredForService")
        }
      }

      internal var requiredForLaw: SignalValue? {
        get {
          return snapshot["requiredForLaw"] as? SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "requiredForLaw")
        }
      }

      internal struct Retention: GraphQLSelectionSet {
        internal static let possibleTypes = ["RetentionInfo"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("style", type: .nonNull(.scalar(RetentionStyle.self))),
          GraphQLField("timeInDays", type: .scalar(Int.self)),
          GraphQLField("additionalInfo", type: .scalar(String.self)),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(style: RetentionStyle, timeInDays: Int? = nil, additionalInfo: String? = nil) {
          self.init(snapshot: ["__typename": "RetentionInfo", "style": style, "timeInDays": timeInDays, "additionalInfo": additionalInfo])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var style: RetentionStyle {
          get {
            return snapshot["style"]! as! RetentionStyle
          }
          set {
            snapshot.updateValue(newValue, forKey: "style")
          }
        }

        internal var timeInDays: Int? {
          get {
            return snapshot["timeInDays"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timeInDays")
          }
        }

        internal var additionalInfo: String? {
          get {
            return snapshot["additionalInfo"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "additionalInfo")
          }
        }
      }
    }

    internal struct Capability: GraphQLSelectionSet {
      internal static let possibleTypes = ["CapabilitySignals"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("supportsAccountCreation", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("supportsAccountDeletion", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("supportsDataDeletionRequests", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("supportsDataExport", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("supportsSubscriptions", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("sellsPersonalInformation", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("usesCookiesOrTracking", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("supportsTwoFactorAuth", type: .nonNull(.scalar(SignalValue.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(supportsAccountCreation: SignalValue, supportsAccountDeletion: SignalValue, supportsDataDeletionRequests: SignalValue, supportsDataExport: SignalValue, supportsSubscriptions: SignalValue, sellsPersonalInformation: SignalValue, usesCookiesOrTracking: SignalValue, supportsTwoFactorAuth: SignalValue) {
        self.init(snapshot: ["__typename": "CapabilitySignals", "supportsAccountCreation": supportsAccountCreation, "supportsAccountDeletion": supportsAccountDeletion, "supportsDataDeletionRequests": supportsDataDeletionRequests, "supportsDataExport": supportsDataExport, "supportsSubscriptions": supportsSubscriptions, "sellsPersonalInformation": sellsPersonalInformation, "usesCookiesOrTracking": usesCookiesOrTracking, "supportsTwoFactorAuth": supportsTwoFactorAuth])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var supportsAccountCreation: SignalValue {
        get {
          return snapshot["supportsAccountCreation"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportsAccountCreation")
        }
      }

      internal var supportsAccountDeletion: SignalValue {
        get {
          return snapshot["supportsAccountDeletion"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportsAccountDeletion")
        }
      }

      internal var supportsDataDeletionRequests: SignalValue {
        get {
          return snapshot["supportsDataDeletionRequests"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportsDataDeletionRequests")
        }
      }

      internal var supportsDataExport: SignalValue {
        get {
          return snapshot["supportsDataExport"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportsDataExport")
        }
      }

      internal var supportsSubscriptions: SignalValue {
        get {
          return snapshot["supportsSubscriptions"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportsSubscriptions")
        }
      }

      internal var sellsPersonalInformation: SignalValue {
        get {
          return snapshot["sellsPersonalInformation"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "sellsPersonalInformation")
        }
      }

      internal var usesCookiesOrTracking: SignalValue {
        get {
          return snapshot["usesCookiesOrTracking"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "usesCookiesOrTracking")
        }
      }

      internal var supportsTwoFactorAuth: SignalValue {
        get {
          return snapshot["supportsTwoFactorAuth"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "supportsTwoFactorAuth")
        }
      }
    }

    internal struct RiskIndicator: GraphQLSelectionSet {
      internal static let possibleTypes = ["RiskIndicators"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("dataCollectionBreadth", type: .nonNull(.scalar(Int.self))),
        GraphQLField("collectsSensitiveDataForNonEssentialPurposes", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("sellsPersonalInformation", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("maxRetentionDays", type: .scalar(Int.self)),
        GraphQLField("hasIndefiniteRetention", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("encryptionPractices", type: .nonNull(.scalar(SignalValue.self))),
        GraphQLField("breachRisk", type: .nonNull(.scalar(SignalValue.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(dataCollectionBreadth: Int, collectsSensitiveDataForNonEssentialPurposes: SignalValue, sellsPersonalInformation: SignalValue, maxRetentionDays: Int? = nil, hasIndefiniteRetention: SignalValue, encryptionPractices: SignalValue, breachRisk: SignalValue) {
        self.init(snapshot: ["__typename": "RiskIndicators", "dataCollectionBreadth": dataCollectionBreadth, "collectsSensitiveDataForNonEssentialPurposes": collectsSensitiveDataForNonEssentialPurposes, "sellsPersonalInformation": sellsPersonalInformation, "maxRetentionDays": maxRetentionDays, "hasIndefiniteRetention": hasIndefiniteRetention, "encryptionPractices": encryptionPractices, "breachRisk": breachRisk])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var dataCollectionBreadth: Int {
        get {
          return snapshot["dataCollectionBreadth"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "dataCollectionBreadth")
        }
      }

      internal var collectsSensitiveDataForNonEssentialPurposes: SignalValue {
        get {
          return snapshot["collectsSensitiveDataForNonEssentialPurposes"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "collectsSensitiveDataForNonEssentialPurposes")
        }
      }

      internal var sellsPersonalInformation: SignalValue {
        get {
          return snapshot["sellsPersonalInformation"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "sellsPersonalInformation")
        }
      }

      internal var maxRetentionDays: Int? {
        get {
          return snapshot["maxRetentionDays"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "maxRetentionDays")
        }
      }

      internal var hasIndefiniteRetention: SignalValue {
        get {
          return snapshot["hasIndefiniteRetention"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "hasIndefiniteRetention")
        }
      }

      internal var encryptionPractices: SignalValue {
        get {
          return snapshot["encryptionPractices"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "encryptionPractices")
        }
      }

      internal var breachRisk: SignalValue {
        get {
          return snapshot["breachRisk"]! as! SignalValue
        }
        set {
          snapshot.updateValue(newValue, forKey: "breachRisk")
        }
      }
    }

    internal struct OrganizationIdentity: GraphQLSelectionSet {
      internal static let possibleTypes = ["OrganizationIdentity"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("brandName", type: .scalar(String.self)),
        GraphQLField("companyName", type: .scalar(String.self)),
        GraphQLField("primaryCategory", type: .scalar(OrganizationCategory.self)),
        GraphQLField("categories", type: .nonNull(.list(.nonNull(.scalar(OrganizationCategory.self))))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(brandName: String? = nil, companyName: String? = nil, primaryCategory: OrganizationCategory? = nil, categories: [OrganizationCategory]) {
        self.init(snapshot: ["__typename": "OrganizationIdentity", "brandName": brandName, "companyName": companyName, "primaryCategory": primaryCategory, "categories": categories])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var brandName: String? {
        get {
          return snapshot["brandName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "brandName")
        }
      }

      internal var companyName: String? {
        get {
          return snapshot["companyName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "companyName")
        }
      }

      internal var primaryCategory: OrganizationCategory? {
        get {
          return snapshot["primaryCategory"] as? OrganizationCategory
        }
        set {
          snapshot.updateValue(newValue, forKey: "primaryCategory")
        }
      }

      internal var categories: [OrganizationCategory] {
        get {
          return snapshot["categories"]! as! [OrganizationCategory]
        }
        set {
          snapshot.updateValue(newValue, forKey: "categories")
        }
      }
    }
  }
}

internal struct ProviderConfigurationFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment ProviderConfigurationFields on ProviderConfiguration {\n  __typename\n  data\n}"

  internal static let possibleTypes = ["ProviderConfiguration"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("data", type: .nonNull(.scalar(GraphQLID.self))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(data: GraphQLID) {
    self.init(snapshot: ["__typename": "ProviderConfiguration", "data": data])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var data: GraphQLID {
    get {
      return snapshot["data"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "data")
    }
  }
}

internal struct VirtualPresenceFields: GraphQLFragment {
  internal static let fragmentString =
    "fragment VirtualPresenceFields on VirtualPresence {\n  __typename\n  id\n  providerType\n  identifier\n  state\n  relationshipProvider\n  lastScannedAtEpochMs\n  owner\n  version\n  createdAtEpochMs\n  updatedAtEpochMs\n}"

  internal static let possibleTypes = ["VirtualPresence"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("providerType", type: .nonNull(.scalar(ProviderType.self))),
    GraphQLField("identifier", type: .nonNull(.scalar(String.self))),
    GraphQLField("state", type: .nonNull(.scalar(VirtualPresenceState.self))),
    GraphQLField("relationshipProvider", type: .scalar(RelationshipProvider.self)),
    GraphQLField("lastScannedAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("owner", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("version", type: .nonNull(.scalar(Int.self))),
    GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(id: GraphQLID, providerType: ProviderType, identifier: String, state: VirtualPresenceState, relationshipProvider: RelationshipProvider? = nil, lastScannedAtEpochMs: Double, owner: GraphQLID, version: Int, createdAtEpochMs: Double, updatedAtEpochMs: Double) {
    self.init(snapshot: ["__typename": "VirtualPresence", "id": id, "providerType": providerType, "identifier": identifier, "state": state, "relationshipProvider": relationshipProvider, "lastScannedAtEpochMs": lastScannedAtEpochMs, "owner": owner, "version": version, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var id: GraphQLID {
    get {
      return snapshot["id"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "id")
    }
  }

  internal var providerType: ProviderType {
    get {
      return snapshot["providerType"]! as! ProviderType
    }
    set {
      snapshot.updateValue(newValue, forKey: "providerType")
    }
  }

  internal var identifier: String {
    get {
      return snapshot["identifier"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "identifier")
    }
  }

  internal var state: VirtualPresenceState {
    get {
      return snapshot["state"]! as! VirtualPresenceState
    }
    set {
      snapshot.updateValue(newValue, forKey: "state")
    }
  }

  internal var relationshipProvider: RelationshipProvider? {
    get {
      return snapshot["relationshipProvider"] as? RelationshipProvider
    }
    set {
      snapshot.updateValue(newValue, forKey: "relationshipProvider")
    }
  }

  internal var lastScannedAtEpochMs: Double {
    get {
      return snapshot["lastScannedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "lastScannedAtEpochMs")
    }
  }

  internal var owner: GraphQLID {
    get {
      return snapshot["owner"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "owner")
    }
  }

  internal var version: Int {
    get {
      return snapshot["version"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "version")
    }
  }

  internal var createdAtEpochMs: Double {
    get {
      return snapshot["createdAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
    }
  }

  internal var updatedAtEpochMs: Double {
    get {
      return snapshot["updatedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
    }
  }
}
}