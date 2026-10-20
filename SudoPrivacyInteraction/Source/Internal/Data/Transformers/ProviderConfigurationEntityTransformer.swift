//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Decodes the opaque, base-64 encoded `ProviderConfigurationFields.data` payload returned by the
/// service into the public `ProviderConfiguration` list.
///
/// The payload is base-64 encoded JSON of the form:
/// `{ "providers": [ { "name": ..., "providerType": "EMAIL", "version": 1, "clientId": ... } ] }`.
/// The `version` field is present in the payload but intentionally not exposed by the SDK.
struct ProviderConfigurationEntityTransformer {

    /// Shape of the decoded JSON payload. Mirrors the service's opaque provider configuration.
    private struct DecodedPayload: Decodable {
        let providers: [DecodedProvider]
    }

    /// A single provider entry within the decoded payload. `version` is present in the payload but
    /// intentionally omitted here since the SDK does not expose it.
    private struct DecodedProvider: Decodable {
        let name: String
        let providerType: String
        let clientId: String
    }

    /// Decodes the opaque provider configuration data into one `ProviderConfiguration` per provider.
    ///
    /// - Throws: `SudoPrivacyInteractionError.decodingError` if the data is not valid base-64 or the
    ///   decoded bytes are not the expected JSON shape.
    func transform(_ fields: GraphQL.ProviderConfigurationFields) throws -> [ProviderConfiguration] {
        guard let decodedData = Data(base64Encoded: fields.data) else {
            throw SudoPrivacyInteractionError.decodingError
        }
        let payload: DecodedPayload
        do {
            payload = try JSONDecoder().decode(DecodedPayload.self, from: decodedData)
        } catch {
            throw SudoPrivacyInteractionError.decodingError
        }
        return payload.providers.map { provider in
            ProviderConfiguration(
                name: provider.name,
                providerType: transform(provider.providerType),
                clientId: provider.clientId
            )
        }
    }

    // MARK: - Enum mapping

    private func transform(_ providerType: String) -> ProviderType {
        switch providerType {
        case "EMAIL":
            return .email
        default:
            return .unknown
        }
    }
}
