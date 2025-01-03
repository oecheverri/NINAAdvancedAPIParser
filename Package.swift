// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "NINAAdvancedAPIModelsKit",
    platforms: [
        .macOS(.v13),
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "NINAAdvancedAPIModelsKit",
            targets: ["NINAAdvancedAPIModelsKit"]
        )
    ],
    targets: [
        .target(name: "NINAAdvancedAPIModelsKit"),
        .testTarget(
            name: "NINAAdvancedAPIModelsKitTests",
            dependencies: ["NINAAdvancedAPIModelsKit"]
        ),
    ]
)
