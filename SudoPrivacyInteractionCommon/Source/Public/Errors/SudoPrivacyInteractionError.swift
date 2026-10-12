//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Errors that occur in SudoPrivacyInteraction.
public enum SudoPrivacyInteractionError: Error, Equatable, LocalizedError, Sendable {

    // MARK: - Client

    /// Configuration supplied to `DefaultSudoPrivacyInteractionClient` is invalid.
    case invalidConfig
    /// User is not signed in.
    case notSignedIn
    /// Device cryptographic key not found.
    case keyNotFound
    /// Indicates that the key archive imported was invalid.
    case invalidKeyArchive

    // MARK: - Service

    /// The virtual presence supplied could not be found.
    case virtualPresenceNotFound
    /// The data holder supplied could not be found.
    case dataHolderNotFound
    /// The provider credential supplied could not be found.
    case providerCredentialNotFound
    /// The caller is not authorized to perform the operation.
    case unauthorized
    /// Input information supplied is invalid.
    case invalidArgument(_ msg: String?)

    // MARK: - Common

    case accountLocked
    case decodingError
    case environmentError
    case fatalError(_ msg: String?)
    case identityInsufficient
    case identityNotVerified
    case invalidToken
    case insufficientEntitlements
    case internalError(_ cause: String?)
    case limitExceeded(_ msg: String?)
    case noEntitlements
    case policyFailed
    case serviceError
    case serviceQuotaExceeded
    case versionMismatch

    public var errorDescription: String? {
        switch self {
        case .invalidConfig:
            return "Configuration supplied is invalid"
        case .notSignedIn:
            return "User is not signed in"
        case .keyNotFound:
            return "Device cryptographic key could not be found"
        case .invalidKeyArchive:
            return "Imported key archive is invalid"
        case .virtualPresenceNotFound:
            return "Virtual presence could not be found"
        case .dataHolderNotFound:
            return "Data holder could not be found"
        case .providerCredentialNotFound:
            return "Provider credential could not be found"
        case .unauthorized:
            return "Not authorized to perform the operation"
        case let .invalidArgument(msg):
            return msg ?? "Invalid argument supplied"
        case .accountLocked:
            return "Account is locked"
        case .decodingError:
            return "A decoding error occurred"
        case .environmentError:
            return "An environment error occurred"
        case let .fatalError(msg):
            return msg ?? "A fatal error occurred"
        case .identityInsufficient:
            return "Identity information is insufficient"
        case .identityNotVerified:
            return "Identity could not be verified"
        case .invalidToken:
            return "The token supplied is invalid"
        case .insufficientEntitlements:
            return "Insufficient entitlements to perform the operation"
        case let .internalError(cause):
            return cause ?? "An internal error occurred"
        case let .limitExceeded(msg):
            return msg ?? "A limit has been exceeded"
        case .noEntitlements:
            return "User has no entitlements associated with them"
        case .policyFailed:
            return "A policy check failed"
        case .serviceError:
            return "A service error occurred"
        case .serviceQuotaExceeded:
            return "A service quota has been exceeded"
        case .versionMismatch:
            return "A version mismatch has occurred"
        }
    }
}
