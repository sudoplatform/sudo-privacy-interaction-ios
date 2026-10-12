// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SudoPrivacyInteraction",
    platforms: [
        .iOS(.v18),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SudoPrivacyInteraction",
            targets: ["SudoPrivacyInteraction"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sudoplatform/sudo-api-client-ios", from: "14.0.0"),
        .package(url: "https://github.com/sudoplatform/sudo-config-manager-ios", from: "6.0.1"),
        .package(url: "https://github.com/sudoplatform/sudo-logging-ios", from: "3.0.0"),
        .package(url: "https://github.com/sudoplatform/sudo-key-manager-ios", from: "5.0.0"),
        .package(url: "https://github.com/sudoplatform/sudo-user-ios", from: "19.0.0"),
        .package(url: "https://github.com/aws-amplify/amplify-swift", from: "2.49.1")
    ],
    targets: [
        .target(
            name: "SudoPrivacyInteractionCommon",
            dependencies: [
                .product(name: "SudoLogging", package: "sudo-logging-ios"),
                .product(name: "SudoKeyManager", package: "sudo-key-manager-ios"),
            ],
            path: "SudoPrivacyInteractionCommon/",
            swiftSettings: [.swiftLanguageMode(.v5)]
        ),
        .target(
            name: "SudoPrivacyInteraction",
            dependencies: [
                .product(name: "Amplify", package: "amplify-swift"),
                .product(name: "AWSAPIPlugin", package: "amplify-swift"),
                .product(name: "AWSCognitoAuthPlugin", package: "amplify-swift"),
                .product(name: "AWSPluginsCore", package: "amplify-swift"),
                .product(name: "SudoLogging", package: "sudo-logging-ios"),
                .product(name: "SudoConfigManager", package: "sudo-config-manager-ios"),
                .product(name: "SudoKeyManager", package: "sudo-key-manager-ios"),
                .product(name: "SudoUser", package: "sudo-user-ios"),
                .product(name: "SudoApiClient", package: "sudo-api-client-ios"),
                .target(name: "SudoPrivacyInteractionCommon")
            ],
            path: "SudoPrivacyInteraction/",
            swiftSettings: [.swiftLanguageMode(.v5)]
        ),
        .testTarget(
            name: "SudoPrivacyInteractionTests",
            dependencies: [
                .target(name: "SudoPrivacyInteraction"),
                .target(name: "SudoPrivacyInteractionCommon")
            ],
            path: "SudoPrivacyInteractionTests/",
            swiftSettings: [.swiftLanguageMode(.v5)]
        )
    ]
)
