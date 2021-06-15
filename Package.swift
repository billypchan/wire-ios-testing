// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WireTesting",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WireTesting",
            targets: ["WireTesting"]),
    ],
    dependencies: [
        .package(url: "https://github.com/billypchan/wire-ios-system", from: "32.0.21"),
        .package(
            url: "https://github.com/billypchan/ocmock",
            .branch: ("master")
         )
    ],
    targets: [
        .binaryTarget(
                    name: "WireTesting",
                    url: "https://github.com/billypchan/wire-ios-testing/releases/download/23.0.17/WireTesting.xcframework.zip",
                    checksum: "3b923ff453dd7b1dda88a53a974b80d79f4ea81183fc10bfd5e278f7ccc58254"),
        .testTarget(
            name: "WireTesting-Tests",
            dependencies: ["WireTesting"]),
    ]
)
