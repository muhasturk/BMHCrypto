// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "BMHCrypto",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6),
        .tvOS(.v13),
    ],
    products: [
        .library(
            name: "BMHCrypto",
            targets: ["BMHCrypto"]),
    ],
    targets: [
        .target(
            name: "BMHCrypto",
            dependencies: []),
        .testTarget(
            name: "BMHCryptoTests",
            dependencies: ["BMHCrypto"]),
    ],
    swiftLanguageVersions: [.v5]
)
