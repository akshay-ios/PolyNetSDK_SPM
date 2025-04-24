// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PolyNetSPM",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "PolyNetSPM",
            targets: ["PolyNetSPM"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", exact: "1.26.0"),
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.8")
    ],
    targets: [
        .target(
            name: "PolyNetSPM",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "Starscream", package: "Starscream")
            ]
        ),
        .binaryTarget(
            name: "PolyNetSDK",
            url:"https://artifacts.s73cloud.com/repository/maven-s73-releases/s73-polynet-plat/polynet-swift-package-manager/5.2.0/polynet-swift-package-manager-5.2.0.zip",
            checksum: "9cb83606e31349d63703e583aee92c9a3c1028f534d700f66b40bb9b37ad70d6"
        )
    ]
)

