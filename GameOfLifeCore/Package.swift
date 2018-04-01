// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GameOfLifeCore",
    products: [
        .library(
            name: "GameOfLifeCore",
            targets: ["GameOfLifeCore"]),
        .executable(
            name: "GameOfLife-cli", 
            targets: ["gameoflife-cli"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "GameOfLifeCore",
            dependencies: []),
        .target(
            name: "gameoflife-cli",
            dependencies: ["GameOfLifeCore"]),
        .testTarget(
            name: "GameOfLifeCoreTests",
            dependencies: ["GameOfLifeCore"]),
    ]
)
