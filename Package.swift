// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BannerAdvertising",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BannerAdvertising",
            targets: ["BannerAdvertising"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/SeniorDeveloper-Guroba/GDVVMLibrary", branch: "master"),
        .package(url: "https://github.com/hmlongco/Resolver.git", branch: "master"),
        .package(url: "https://github.com/it-senior-developer/AdvertisingFirebase", branch: "development"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "BannerAdvertising",
            dependencies: [
                .product(name: "Resolver", package: "Resolver"),
                .product(name: "GDVVMLibrary", package: "GDVVMLibrary"),
                .product(name: "AdvertisingFirebase", package: "AdvertisingFirebase"),
            ]),
    ]
)
