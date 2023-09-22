// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "swift-blade-example",
    platforms: [
        .macOS(.v13),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
        .macCatalyst(.v13)
    ],
    products: [
        .executable(
            name: "Example",
            targets: ["Example"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/shackley/swift-blade", from: "0.1.0"),
    ],
    targets: [
        .executableTarget(
            name: "Example",
            dependencies: [
                .product(name: "Blade", package: "swift-blade")
            ]
        )
    ]
)
