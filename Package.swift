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
            dependencies: ["CSystem"]
        ),
        .binaryTarget(
            name: "CSystem",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.7.5/CSystem-d9c685397bc7666d5cde96e4f04cecc874bee5745bc59eae166fab67e67fff84.xcframework.zip",
            checksum: "d9c685397bc7666d5cde96e4f04cecc874bee5745bc59eae166fab67e67fff84"
        ),
        .target(
            name: "SystemPackage_Aggregation",
            dependencies: ["SystemPackage", "CSystem_Aggregation"]
        ),
        .binaryTarget(
            name: "SystemPackage",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.7.5/SystemPackage-3a59e6a84aa7b665ccf46a9986a40c83265393a8b88fa5adc18a569dcfe66d5a.xcframework.zip",
            checksum: "3a59e6a84aa7b665ccf46a9986a40c83265393a8b88fa5adc18a569dcfe66d5a"
        )
    ]
)