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
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.1.0/CSystem.xcframework.zip",
            checksum: "4e217a6469b51ebab3c41ebc1a00f8f0f50e68a2aed6425d4fbf56f26e8f5989"
        ),
        .target(
            name: "SystemPackage_Aggregation",
            dependencies: ["SystemPackage", "CSystem_Aggregation"]
        ),
        .binaryTarget(
            name: "SystemPackage",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.1.0/SystemPackage.xcframework.zip",
            checksum: "708102897ef625544fdc4e0351abaed9cc3b15059c9cb89910b3df876c6eab6c"
        )
    ]
)