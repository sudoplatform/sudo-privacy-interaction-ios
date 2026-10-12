//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Input for the `initiateAction` mutation.
///
/// The action is scoped to a data holder relationship; the owning virtual presence is derived from
/// it. `fulfilmentMethod` is the method the client was offered for this intent — initiation fails if
/// the server re-resolves a different method.
public struct InitiateActionInput: Equatable, Sendable {

    /// Identifier of the data holder the action targets.
    public let dataHolderId: String

    /// The intent of the action to initiate.
    public let intent: ActionIntent

    /// The fulfilment method the client was offered for this intent.
    public let fulfilmentMethod: ActionFulfilmentMethod

    public init(dataHolderId: String, intent: ActionIntent, fulfilmentMethod: ActionFulfilmentMethod) {
        self.dataHolderId = dataHolderId
        self.intent = intent
        self.fulfilmentMethod = fulfilmentMethod
    }
}
