// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "StringPadding",
  platforms: [
    .macOS("10.13"),
  ],
  products: [
    .library(
      name: "StringPadding",
      targets: ["StringPadding"]),
  ],
  targets: [
    .target(
      name: "StringPadding",
      dependencies: []),
    .testTarget(
      name: "StringPaddingTests",
      dependencies: ["StringPadding"]),
  ]
)
