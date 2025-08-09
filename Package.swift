// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TaskManagerApp",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "TaskManagerApp",
            targets: ["TaskManagerApp"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TaskManagerApp",
            dependencies: []),
        .testTarget(
            name: "TaskManagerAppTests",
            dependencies: ["TaskManagerApp"]),
    ]
)