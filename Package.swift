// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.


import PackageDescription

let package = Package(
    name: "SwiftClibxml2",
    pkgConfig: "libxml-2.0",
    providers: [
        .brew(["libxml2"]),
        .apt(["libxml2-dev"])
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftClibxml2",
            targets: ["SwiftClibxml2"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftClibxml2",
            dependencies: []),
        .testTarget(
            name: "SwiftClibxml2Tests",
            dependencies: ["SwiftClibxml2"]),
    ]
)
