// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "storyteller-sdk",
    platforms: [
      .iOS(.v13),
      .tvOS(.v15)
    ],
    products: [
        .library(
          name: "StorytellerSDK",
          targets: ["StorytellerSDK"]),
    ],
    targets: [
      .binaryTarget(name: "StorytellerSDK",
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/11.0.2-alpha.1/StorytellerSDK.zip",
                    checksum: "ebb03a13b61cc27cfb31b1f1424a773dbb2e0911d3d0d66ef96ef93bfbe0678e")
    ]
)
