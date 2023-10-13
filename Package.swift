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
            name: "LogicCalculate"
            url: "https://github.com/workerprocess/LogicCalculate-Distribute", 
            from: "0.0.1"),
    ],
    targets: [
        .binaryTarget(
            name: "MiniAppA",
            path: "MiniAppA.xcframework"),
        .target(name: "LogicCalculate",
                dependencies: [
                    .target(name: "MiniAppA"),
                    .product(name: "LogicCalculate", package: "LogicCalculate")
                ],
                path: "LogicCalculate.xcframework")
    ])
