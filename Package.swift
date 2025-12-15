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
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.0.0/CSystem.xcframework.zip",
            checksum: "28b1fa4893130b936cb692b0b7e365a7374f951b2b7806af09a48a8fbf28084e"
        ),
        .target(
            name: "SystemPackage_Aggregation",
            dependencies: ["SystemPackage", "CSystem_Aggregation"]
        ),
        .binaryTarget(
            name: "SystemPackage",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.0.0/SystemPackage.xcframework.zip",
            checksum: "2cbde54a073ee4eced4be76d5087f120f6aa3d532eef243612c1e8b62f79e5f7"
        )
    ]
)