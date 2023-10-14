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
            path: "MiniAppA.xcframework")
    ])
