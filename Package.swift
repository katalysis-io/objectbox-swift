// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ObjectBox",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "ObjectBox", targets: ["ObjectBox"]),
    ],
    targets: [
        .target(name: "ObjectBox", dependencies: ["CObjectBox"]),
        .target(
            name: "CObjectBox", 
            linkerSettings: [
                .linkedLibrary("objectbox"),
            ]
        ),
        .testTarget(name: "ObjectBoxTests", dependencies: ["ObjectBox"]),
        .testTarget(name: "CObjectBoxTests", dependencies: ["CObjectBox"]),
    ],
    cxxLanguageStandard: .cxx11
)
