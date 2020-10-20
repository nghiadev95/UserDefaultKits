// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UserDefaultKits",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "UserDefaultKits",
            targets: ["UserDefaultKits"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "UserDefaultKits",
            dependencies: [],
            path: "Sources")
    ],
    swiftLanguageVersions: [.v5])
