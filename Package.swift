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
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.7.5/CSystem-e0f0d66ba6743424fc4376b962744c1b86b777a3b9afa0d7f10de8ea1996f634.xcframework.zip",
            checksum: "e0f0d66ba6743424fc4376b962744c1b86b777a3b9afa0d7f10de8ea1996f634"
        ),
        .target(
            name: "SystemPackage_Aggregation",
            dependencies: ["SystemPackage", "CSystem_Aggregation"]
        ),
        .binaryTarget(
            name: "SystemPackage",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.7.5/SystemPackage-d9f4985e308be4f30939e67b3a208d9730ebe7a91d538d3b26a1473de906f830.xcframework.zip",
            checksum: "d9f4985e308be4f30939e67b3a208d9730ebe7a91d538d3b26a1473de906f830"
        )
    ]
)