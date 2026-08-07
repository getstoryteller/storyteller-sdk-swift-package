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
          targets: [
            "StorytellerSDK",
            "StorytellerSDKDependencies"
          ]),
    ],
    dependencies: [
      .package(url: "https://github.com/getstoryteller/storyteller-lottie-module-swift", exact: "4.6.0"),
    ],
    targets: [
      .binaryTarget(name: "StorytellerSDK",
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/11.6.0/StorytellerSDK.zip",
                    checksum: "b5b2c58426f3339cc0b36b353680a8614becfa267e35894c09ef715a2de4dc67"),
      .target(
        name: "StorytellerSDKDependencies",
        dependencies: [
          .product(name: "StorytellerLottie", package: "storyteller-lottie-module-swift")
        ])
    ]
)
