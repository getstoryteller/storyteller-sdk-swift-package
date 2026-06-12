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
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/11.4.1/StorytellerSDK.zip",
                    checksum: "0fc1943e8455037259357fa4504672f0847eb7bdeda0d4f567f84932deee7725"),
      .target(
        name: "StorytellerSDKDependencies",
        dependencies: [
          .product(name: "StorytellerLottie", package: "storyteller-lottie-module-swift")
        ])
    ]
)
