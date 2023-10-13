// swift-tools-version:5.7
import PackageDescription
let package = Package(
    name: "MiniAppA",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "MiniAppA",
            targets: ["MiniAppA"])
    ],
    dependencies: [
        .package(url: "https://github.com/workerprocess/LogicCalculate-Distribute", from:"0.0.1"),
    ],
    targets: [
        .target(
            name: "MiniAppA",
            dependencies: ["LogicCalculate"],
            path: "MiniAppA.xcframework")
    ])
