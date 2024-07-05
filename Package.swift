// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DemoPackage",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(name: "DemoPackage", targets: ["DemoPackage"])
    ],
    targets: [
        .target(
            name: "DemoPackage",
            dependencies: [
                .target(name: "shared")
            ]
        ),
        .binaryTarget(
            name: "shared",
            url:"https://github.com/raviseta/SPMDemo/releases/download/2.0/shared.xcframework.zip",
            checksum:"65eed929f1678714a9d98daa72bf7370d7830829b31fcfdc40dbb56816b5ea8d")
    ]
)
