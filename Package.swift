// swift-tools-version:5.5.0

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
            dependencies: ["CSystem"]
        ),
        .binaryTarget(
            name: "CSystem",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.2.0/CSystem.xcframework.zip",
            checksum: "da1b636fe3c110fe2bd997b1e22970fd9855a5d6850efa8c8d886479f429dc87"
        ),
        .target(
            name: "SystemPackage_Aggregation",
            dependencies: ["SystemPackage", "CSystem_Aggregation"]
        ),
        .binaryTarget(
            name: "SystemPackage",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.2.0/SystemPackage.xcframework.zip",
            checksum: "2765fa70599b127eaa7a0eec160fd3522730562e086aa62816a73aac4917da8c"
        )
    ]
)