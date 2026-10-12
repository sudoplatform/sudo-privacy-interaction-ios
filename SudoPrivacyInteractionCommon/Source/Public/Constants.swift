//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public final class Constants {

    /// Service name that identifies the Sudo Platform Privacy Interaction service. Corresponds to:
    /// * the service name specified in the sudoplatformconfig.json client configuration file
    ///   identifying Privacy Interaction service specific configuration
    /// * the service name specified in push notifications identifying the source of the notification
    public static let serviceName = "pimService"

    /// Default namespace to store keys in a SudoKeyManager.
    public static let defaultKeyNamespace = "com.sudoplatform.privacyinteraction"
}
