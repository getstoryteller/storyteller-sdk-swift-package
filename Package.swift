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
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/10.13.1/StorytellerSDK.zip",
                    checksum: "8ca7f82cb7739522cff1609cb328f6b0789a3d0d7f983986b938ebc6c57e0ec4")
    ]
)
