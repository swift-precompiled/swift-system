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
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.7.5/CSystem-5180256c9aa0a74c1cb0704f09c157aa59392d3624f482c9b74418768e4afdae.xcframework.zip",
            checksum: "5180256c9aa0a74c1cb0704f09c157aa59392d3624f482c9b74418768e4afdae"
        ),
        .target(
            name: "SystemPackage_Aggregation",
            dependencies: ["SystemPackage", "CSystem_Aggregation"]
        ),
        .binaryTarget(
            name: "SystemPackage",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.7.5/SystemPackage-126c8587a74118b5781f748f820c60d7f4ac4ad51a6f978d0463c46ff59fc0b3.xcframework.zip",
            checksum: "126c8587a74118b5781f748f820c60d7f4ac4ad51a6f978d0463c46ff59fc0b3"
        )
    ]
)