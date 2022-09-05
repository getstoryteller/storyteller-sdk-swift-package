// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "storyteller-sdk-package",
    platforms: [
      .iOS(.v11)
    ],
    products: [
        .library(
          name: "StorytellerSDK",
          targets: ["StorytellerSDK"]),
    ],
    targets: [
      .binaryTarget(name: "StorytellerSDK",
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/8.1.12/StorytellerSDK.zip",
                    checksum: "4369bc6fd2f5fc14fc0c2eee8a064f3e0d57035a25f57f664aeab5c5f964266b")
    ]
)
