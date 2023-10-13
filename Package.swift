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
        .package(
            url: "https://github.com/workerprocess/LogicCalculate-Distribute",
            .exact("0.0.1")
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MiniAppA",
            dependencies: ["LogicCalculate"],
            path: "MiniAppA.xcframework")
    ])
