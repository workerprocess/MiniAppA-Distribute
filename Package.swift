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
            targets: ["MiniAppA","LogicCalculate"])
    ],
    targets: [
        .binaryTarget(
            name: "MiniAppA",
            path: "MiniAppA.xcframework"
        )
        .binaryTarget(
            name: "LogicCalculate",
            url: "https://s3.ap-southeast-1.amazonaws.com/storage.default/LogicCalculate.zip",
            checksum: "9c91b2092d59a1a62f0635952a06859862cf66eb05458c907f40d3978e56e432"
        )
    ])
