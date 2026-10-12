//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoApiClient

extension SudoPrivacyInteractionError {

    /// Translate an error thrown by `SudoApiClient` into a `SudoPrivacyInteractionError`.
    ///
    /// Known `ApiOperationError` cases are mapped to their closest public error;
    /// anything else is wrapped as an `internalError`.
    static func fromApiOperationError(_ error: Error) -> SudoPrivacyInteractionError {
        guard let apiError = error as? ApiOperationError else {
            return .internalError(error.localizedDescription)
        }
        switch apiError {
        case .notSignedIn:
            return .notSignedIn
        case .notAuthorized:
            return .unauthorized
        case .accountLocked:
            return .accountLocked
        case .insufficientEntitlements:
            return .insufficientEntitlements
        case .limitExceeded, .rateLimitExceeded:
            return .limitExceeded(nil)
        case .invalidArgument, .invalidRequest:
            return .invalidArgument(nil)
        case .versionMismatch:
            return .versionMismatch
        case .serviceError:
            return .serviceError
        case let .fatalError(description):
            return .fatalError(description)
        default:
            return .internalError(apiError.localizedDescription)
        }
    }
}
