// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "NINAAdvancedModelsKit",
    platforms: [
        .macOS(.v13),
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "NINAAdvancedModelsKit",
            targets: ["NINAAdvancedModelsKit"]
        )
    ],
    targets: [
        .target(name: "NINAAdvancedModelsKit"),
        .testTarget(
            name: "NINAAdvancedModelsKitTests",
            dependencies: ["NINAAdvancedModelsKit"]
        )
    ]
)
