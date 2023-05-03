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
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/9.1.1/StorytellerSDK.zip",
                    checksum: "44619609f0a16899010e8f6b0a82ecd3e327418fa781d0c3ed58388629289f46")
    ]
)
