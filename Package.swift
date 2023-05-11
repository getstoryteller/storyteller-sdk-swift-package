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
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/9.1.3/StorytellerSDK.zip",
                    checksum: "aecb616288551e49e74d9a4ab057dbaac0469969230d10ae4c3f96207282f0de")
    ]
)
