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
                    url: "https://storyteller.azureedge.net/sdk-ios/xcframeworks/11.4.0/StorytellerSDK.zip",
                    checksum: "7d3a3a3fee0aa7e1bca95127eef78a9618a253ba883a8e2ccb729e1d1e550d6a"),
      .target(
        name: "StorytellerSDKDependencies",
        dependencies: [
          .product(name: "Lottie", package: "lottie-spm")
        ])
    ]
)
