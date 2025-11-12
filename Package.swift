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
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/11.0.4/StorytellerSDK.zip",
                    checksum: "20a30b1ea709a4018714c6fe04310e7b12dfd5dd72cc4fcbf655b5a5019e0ec2")
    ]
)
