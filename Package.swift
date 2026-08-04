// swift-tools-version:6.1.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-system",
    products: [
        .library(
            name: "SystemPackage",
            targets: ["SystemPackage_PrecompiledProduct"]
        )
    ],
    targets: [
        .target(
            name: "CSystem",
            dependencies: ["CSystem_PrecompiledArchive"],
            path: "Sources/CSystem",
            publicHeadersPath: "include"
        ),
        .binaryTarget(
            name: "CSystem_PrecompiledArchive",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.8.0/CSystem-e279ab7e1b03736fe25c057b054132a6f097237ded04ced1280778a2901a85b2.xcframework.zip",
            checksum: "e279ab7e1b03736fe25c057b054132a6f097237ded04ced1280778a2901a85b2"
        ),
        .target(
            name: "SystemPackage_Aggregation",
            dependencies: ["SystemPackage"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SystemPackage",
            url: "https://github.com/swift-precompiled/swift-system/releases/download/1.8.0/SystemPackage-c22dff436130084c0a794e486024037e059fd41833b5841fbf4ea407e24864c3.xcframework.zip",
            checksum: "c22dff436130084c0a794e486024037e059fd41833b5841fbf4ea407e24864c3"
        ),
        .target(
            name: "SystemPackage_PrecompiledProduct",
            dependencies: ["SystemPackage_Aggregation", "CSystem"]
        )
    ]
)