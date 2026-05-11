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
      .package(url: "https://github.com/airbnb/lottie-spm.git", .upToNextMajor(from: "4.5.2")),
    ],
    targets: [
      .binaryTarget(name: "StorytellerSDK",
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/11.3.3/StorytellerSDK.zip",
                    checksum: "6bb6ba04c852fed2e3ab874f35a10a93b42adf2845aebe72547e78722fd756bf"),
      .target(
        name: "StorytellerSDKDependencies",
        dependencies: [
          .product(name: "Lottie", package: "lottie-spm")
        ])
    ]
)
