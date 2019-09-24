// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "Pairs",
  products: [
    .library(
        name: "Pairs",
        targets: ["Pairs"])
  ],
  dependencies: [],
  targets: [
    .target(
      name: "Pairs",
      dependencies: []),
    .testTarget(
      name: "PairsTests",
      dependencies: ["Pairs"])
  ]
)
