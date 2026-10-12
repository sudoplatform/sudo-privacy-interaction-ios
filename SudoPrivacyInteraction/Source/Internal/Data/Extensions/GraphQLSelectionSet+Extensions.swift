//
// Copyright © 2026 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SudoApiClient

/// Note: there is a bug with the Amplify codegen types where enum properties cannot be accessed directly or it will cause a crash.
/// These extension methods have been added to provide an alternate way to fetch the enum properties in the short term
/// until the bug is fixed.
/// https://github.com/aws-amplify/amplify-swift/issues/3953
extension GraphQLSelectionSet {

    // MARK: - Helpers

    /// Read an optional enum value stored under an explicit snapshot key.
    ///
    /// Returns `nil` only when the key is absent from the snapshot. When the key is present but holds
    /// a raw value this SDK version doesn't recognize, it maps through the enum's `getDefaultValue`
    /// fallback rather than dropping the value.
    func getOptionalEnumValue<T: GraphQLEnum>(_ type: T.Type, forKey key: String) -> T? {
        if let typedValue = snapshot[key] as? T {
            return typedValue
        } else if let rawValue = snapshot[key] as? T.RawValue {
            return T(rawValue: rawValue) ?? type.getDefaultValue(from: rawValue)
        } else {
            return nil
        }
    }

    /// Read a non-null enum value stored under an explicit snapshot key.
    ///
    /// Falls back to the enum's `getDefaultValue` when the key is absent, so callers always get a value.
    func getEnumValue<T: GraphQLEnum>(_ type: T.Type, forKey key: String) -> T {
        getOptionalEnumValue(type, forKey: key) ?? type.getDefaultValue(from: nil)
    }

    /// Read a non-null list of enum values stored under an explicit snapshot key.
    ///
    /// The Amplify codegen stores enum lists as their raw values in the snapshot, so the generated
    /// `as! [Enum]` accessor crashes with a dynamic cast failure. This decodes each element
    /// individually, mapping unrecognized raw values through the enum's `unknown` fallback.
    func getEnumArray<T: GraphQLEnum>(_ type: T.Type, forKey key: String) -> [T] {
        if let typedValues = snapshot[key] as? [T] {
            return typedValues
        } else if let rawValues = snapshot[key] as? [T.RawValue] {
            return rawValues.map { T(rawValue: $0) ?? type.getDefaultValue(from: $0) }
        } else {
            return []
        }
    }

    // MARK: - Getters

    func getProviderType() -> GraphQL.ProviderType {
        getEnumValue(GraphQL.ProviderType.self, forKey: "providerType")
    }

    func getVirtualPresenceState() -> GraphQL.VirtualPresenceState {
        getEnumValue(GraphQL.VirtualPresenceState.self, forKey: "state")
    }

    func getRelationshipProvider() -> GraphQL.RelationshipProvider? {
        getOptionalEnumValue(GraphQL.RelationshipProvider.self, forKey: "relationshipProvider")
    }

    func getDataHolderProtectionState() -> GraphQL.DataHolderProtectionState {
        getEnumValue(GraphQL.DataHolderProtectionState.self, forKey: "protectionState")
    }

    // MARK: - Getters: Analysis result

    func getAnalysisResultStatus() -> GraphQL.AnalysisResultStatus {
        getEnumValue(GraphQL.AnalysisResultStatus.self, forKey: "status")
    }

    func getDataCategory() -> GraphQL.DataCategory {
        getEnumValue(GraphQL.DataCategory.self, forKey: "category")
    }

    func getShareStyle(forKey key: String) -> GraphQL.ShareStyle {
        getEnumValue(GraphQL.ShareStyle.self, forKey: key)
    }

    func getRetentionStyle() -> GraphQL.RetentionStyle {
        getEnumValue(GraphQL.RetentionStyle.self, forKey: "style")
    }

    func getSignalValue(forKey key: String) -> GraphQL.SignalValue {
        getEnumValue(GraphQL.SignalValue.self, forKey: key)
    }

    func getOptionalSignalValue(forKey key: String) -> GraphQL.SignalValue? {
        getOptionalEnumValue(GraphQL.SignalValue.self, forKey: key)
    }

    func getOptionalOrganizationCategory(forKey key: String) -> GraphQL.OrganizationCategory? {
        getOptionalEnumValue(GraphQL.OrganizationCategory.self, forKey: key)
    }

    func getOrganizationCategories(forKey key: String) -> [GraphQL.OrganizationCategory] {
        getEnumArray(GraphQL.OrganizationCategory.self, forKey: key)
    }

    // MARK: - Getters: Actions

    func getActionIntent() -> GraphQL.ActionIntent {
        getEnumValue(GraphQL.ActionIntent.self, forKey: "intent")
    }

    func getActionFulfilmentMethod() -> GraphQL.ActionFulfilmentMethod {
        getEnumValue(GraphQL.ActionFulfilmentMethod.self, forKey: "fulfilmentMethod")
    }

    func getActionOrigin() -> GraphQL.ActionOrigin {
        getEnumValue(GraphQL.ActionOrigin.self, forKey: "origin")
    }

    func getActionStatus() -> GraphQL.ActionStatus {
        getEnumValue(GraphQL.ActionStatus.self, forKey: "status")
    }
}

protocol GraphQLEnum: RawRepresentable {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self
}

extension GraphQL.ProviderType: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.VirtualPresenceState: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.RelationshipProvider: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.DataHolderProtectionState: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.AnalysisResultStatus: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.DataCategory: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.SignalValue: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.ShareStyle: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.RetentionStyle: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.OrganizationCategory: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.ActionIntent: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.ActionFulfilmentMethod: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.ActionOrigin: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}

extension GraphQL.ActionStatus: GraphQLEnum {
    static func getDefaultValue(from rawValue: Self.RawValue?) -> Self {
        .unknown(rawValue ?? "")
    }
}
