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
          targets: ["StorytellerSDKTargets"]),
    ],
    dependencies: [
    ],
    targets: [
      .binaryTarget(name: "StorytellerSDK", path: "./Sources/StorytellerSDK.xcframework"),
      .target(
        name: "StorytellerSDKTargets",
        dependencies: [
          .target(name: "StorytellerSDK")
        ]
      )
    ]
)
