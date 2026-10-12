//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoLogging

public extension SudoLogging.Logger {

    /// Shared logger used across the Privacy Interaction SDK.
    static let privacyInteractionSDKLogger = SudoLogging.Logger(
        identifier: "SudoPrivacyInteraction",
        driver: NSLogDriver(level: .debug)
    )
}
