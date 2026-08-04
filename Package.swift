// swift-tools-version:6.1.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-system",
    products: [
        .library(
            name: "SystemPackage",
            targets: ["SystemPackage_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "CSystem_Aggregation",
            dependencies: ["CSystem"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "CSystem",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.7.5/CSystem-e0f0d66ba6743424fc4376b962744c1b86b777a3b9afa0d7f10de8ea1996f634.xcframework.zip",
            checksum: "e0f0d66ba6743424fc4376b962744c1b86b777a3b9afa0d7f10de8ea1996f634"
        ),
        .target(
            name: "SystemPackage_Aggregation",
            dependencies: ["SystemPackage", "CSystem_Aggregation"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SystemPackage",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.7.5/SystemPackage-f1af412a86b0b0f407568c4907677fb4212371baf5c25b0e8302c9ffabcd1d03.xcframework.zip",
            checksum: "f1af412a86b0b0f407568c4907677fb4212371baf5c25b0e8302c9ffabcd1d03"
        )
    ]
)