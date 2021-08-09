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
      .binaryTarget(name: "AsyncDisplayKit", path: "./Sources/AsyncDisplayKit.xcframework"),
      .binaryTarget(name: "PINCache", path: "./Sources/PINCache.xcframework"),
      .binaryTarget(name: "PINOperation", path: "./Sources/PINOperation.xcframework"),
      .binaryTarget(name: "PINRemoteImage", path: "./Sources/PINRemoteImage.xcframework"),
      .target(
        name: "StorytellerSDKTargets",
        dependencies: [
          .target(name: "StorytellerSDK"),
          .target(name: "AsyncDisplayKit"),
          .target(name: "PINCache"),
          .target(name: "PINOperation"),
          .target(name: "PINRemoteImage")
        ]
      )
    ]
)
