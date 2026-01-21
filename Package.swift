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
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/11.2.0-alpha.1/StorytellerSDK.zip",
                    checksum: "a322719a4bf4b37da6c9bc0c2fcd605b0171f5e57eb2dd2400a1ff0c513b3399")
    ]
)
