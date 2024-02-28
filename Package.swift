// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "storyteller-sdk-package",
    platforms: [
      .iOS(.v11),
      .tvOS(.v15)
    ],
    products: [
        .library(
          name: "StorytellerSDK",
          targets: ["StorytellerSDK"]),
    ],
    targets: [
      .binaryTarget(name: "StorytellerSDK",
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/9.10.0/StorytellerSDK.zip",
                    checksum: "250f58a5366bedd7fb27c17d612a682da3eb6d6f0d0807a574d23248830e91e8")
    ]
)
