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
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.2.1/CSystem.xcframework.zip",
            checksum: "116d82971f6b449e50076a27cd95c7c55c173acbb7b33ba07bf69381a240193b"
        ),
        .target(
            name: "SystemPackage_Aggregation",
            dependencies: ["SystemPackage", "CSystem_Aggregation"]
        ),
        .binaryTarget(
            name: "SystemPackage",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.2.1/SystemPackage.xcframework.zip",
            checksum: "65cc80e39f47ba0150336660f16769a1cbed0e7154129497ebb31188d854043a"
        )
    ]
)