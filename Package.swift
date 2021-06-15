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
    ],
    targets: [
        .binaryTarget(
                    name: "WireTesting",
                    url: "https://github.com/billypchan/wire-ios-testing/releases/download/23.0.17/WireTesting.xcframework.zip",
                    checksum: "3e1e5e0e7d70aac0d19ead21c0912e8e1ad74076dc3935546d7d7d9b687a9379"),
        .testTarget(
            name: "WireTesting-Tests",
            dependencies: ["WireTesting"]),
    ]
)
