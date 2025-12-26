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
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/11.1.0/StorytellerSDK.zip",
                    checksum: "b7eeb2e1e261c2a9987d509e328a013f2f5023a2383e5a3914742c008837969d")
    ]
)
