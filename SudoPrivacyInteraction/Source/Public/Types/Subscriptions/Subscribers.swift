//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// The connection state of a subscription.
public enum ConnectionState: Equatable, Sendable {
    /// The subscription is actively connected and receiving updates.
    case connected
    /// The subscription is not connected.
    case disconnected
}

/// Subscriber for receiving virtual presence state events.
public protocol VirtualPresenceSubscriber: AnyObject {

    /// Notifies the subscriber of an updated virtual presence.
    ///
    /// - Parameter virtualPresence: The updated virtual presence.
    func virtualPresenceUpdated(_ virtualPresence: VirtualPresence)

    /// Notifies the subscriber that the subscription connection state has changed.
    ///
    /// The subscriber will not receive virtual presence change notifications until the connection
    /// state changes to `.connected`, and will stop receiving them once it changes to `.disconnected`.
    ///
    /// - Parameter state: The new connection state.
    func connectionStatusChanged(_ state: ConnectionState)
}

/// Subscriber for receiving data holder discovery events.
public protocol DataHolderSubscriber: AnyObject {

    /// Notifies the subscriber of a batch of data holders discovered or updated during a scan.
    ///
    /// - Parameter dataHolders: The batch of updated data holders.
    func dataHoldersUpdated(_ dataHolders: [DataHolder])

    /// Notifies the subscriber that the subscription connection state has changed.
    ///
    /// The subscriber will not receive data holder change notifications until the connection
    /// state changes to `.connected`, and will stop receiving them once it changes to `.disconnected`.
    ///
    /// - Parameter state: The new connection state.
    func connectionStatusChanged(_ state: ConnectionState)
}

/// Subscriber for receiving analysis result update events.
public protocol AnalysisResultSubscriber: AnyObject {

    /// Notifies the subscriber of an analysis result update.
    ///
    /// The update is a lightweight notification. Use `getAnalysisResult` to fetch the full typed data.
    ///
    /// - Parameter update: The analysis result update notification.
    func analysisResultUpdated(_ update: AnalysisResultUpdate)

    /// Notifies the subscriber that the subscription connection state has changed.
    ///
    /// The subscriber will not receive analysis result change notifications until the connection
    /// state changes to `.connected`, and will stop receiving them once it changes to `.disconnected`.
    ///
    /// - Parameter state: The new connection state.
    func connectionStatusChanged(_ state: ConnectionState)
}

/// Subscriber for receiving action status update events.
public protocol ActionSubscriber: AnyObject {

    /// Notifies the subscriber of an updated action.
    ///
    /// - Parameter action: The updated action.
    func actionUpdated(_ action: Action)

    /// Notifies the subscriber that the subscription connection state has changed.
    ///
    /// The subscriber will not receive action status change notifications until the connection
    /// state changes to `.connected`, and will stop receiving them once it changes to `.disconnected`.
    ///
    /// - Parameter state: The new connection state.
    func connectionStatusChanged(_ state: ConnectionState)
}
