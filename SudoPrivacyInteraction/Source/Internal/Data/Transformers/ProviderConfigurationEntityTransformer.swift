//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Maps the generated GraphQL `ProviderConfigurationFields` fragment into the public
/// `ProviderConfiguration` type.
struct ProviderConfigurationEntityTransformer {

    func transform(_ fields: GraphQL.ProviderConfigurationFields) -> ProviderConfiguration {
        ProviderConfiguration(data: fields.data)
    }
}
