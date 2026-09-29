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
                    url: "https://feeds.usestoryteller.com/sdk-ios/xcframeworks/11.7.2/StorytellerSDK.zip",
                    checksum: "612cc09270bb52c4ccc910ad133b636b19e05fb4ee2824ed7b07dc2b81322fa2"),
      .target(
        name: "StorytellerSDKDependencies",
        dependencies: [
          .product(name: "StorytellerLottie", package: "storyteller-lottie-module-swift")
        ])
    ]
)
