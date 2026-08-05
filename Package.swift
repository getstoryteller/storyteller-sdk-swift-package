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
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/11.5.4/StorytellerSDK.zip",
                    checksum: "b0e4611c5d5377f7e63f29a25b614b265268776c847cb8530d5deb7ae57301a5"),
      .target(
        name: "StorytellerSDKDependencies",
        dependencies: [
          .product(name: "StorytellerLottie", package: "storyteller-lottie-module-swift")
        ])
    ]
)
