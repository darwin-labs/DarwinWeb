// swift-tools-version:5.8
import PackageDescription
let package = Package(
    name: "DarwinWeb",
    platforms: [.macOS(.v11), .iOS(.v13)],
    products: [
        .executable(name: "DarwinWeb", targets: ["DarwinWeb"])
    ],
    dependencies: [
        .package(url: "https://github.com/TokamakUI/Tokamak", from: "0.11.0")
    ],
    targets: [
        .executableTarget(
            name: "DarwinWeb",
            dependencies: [
                "DarwinWebLibrary",
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
        .target(
            name: "DarwinWebLibrary",
            dependencies: []),
        .testTarget(
            name: "DarwinWebLibraryTests",
            dependencies: ["DarwinWebLibrary"]),
    ]
)