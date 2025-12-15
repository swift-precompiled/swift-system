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
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.1.1/CSystem.xcframework.zip",
            checksum: "02011763ae7c649ccffb69ab227339b12ced658e05d274221ea0bbe4433def4c"
        ),
        .target(
            name: "SystemPackage_Aggregation",
            dependencies: ["SystemPackage", "CSystem_Aggregation"]
        ),
        .binaryTarget(
            name: "SystemPackage",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.1.1/SystemPackage.xcframework.zip",
            checksum: "b0a7f10389fd884820121fb0f63690f78f23b72b47436095ec6b1e10ca8dca85"
        )
    ]
)