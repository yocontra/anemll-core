// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "anemll-core",
    platforms: [
        .macOS(.v15),
        .iOS(.v18),
    ],
    products: [
        .library(
            name: "AnemllCore",
            targets: ["AnemllCore"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/huggingface/swift-transformers", branch: "main"),
        .package(url: "https://github.com/jpsim/Yams.git", from: "5.0.0"),
        .package(url: "https://github.com/stencilproject/Stencil.git", from: "0.14.0"),
    ],
    targets: [
        .target(
            name: "AnemllCore",
            dependencies: [
                "Yams",
                .product(name: "Transformers", package: "swift-transformers"),
                "Stencil",
            ]
        ),
    ]
)
