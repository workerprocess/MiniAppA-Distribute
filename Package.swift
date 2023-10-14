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
    targets: [
        .binaryTarget(
            name: "MiniAppA",
            path: "MiniAppA.xcframework"
        )
        .binaryTarget(
            name: "LogicCalculate",
            url: "https://github.com/workerprocess/LogicCalculate-Distribute/blob/main/LogicCalculate.zip",
            checksum: "9c91b2092d59a1a62f0635952a06859862cf66eb05458c907f40d3978e56e432"
        )
    ])
