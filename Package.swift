// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "bbmri-eric-directory-adaptor",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(name: "bbmri-eric-directory-adaptor", targets: ["App"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/esthervanenckevort/MolgenisClientSwift.git", from: "0.1.0"),
        .package(url: "https://github.com/broadwaylamb/OpenCombine.git", from: "0.8.0"),
        .package(url: "https://github.com/esthervanenckevort/swiftrsql.git", from: "1.0.0"),
        .package(url: "https://github.com/ejp-rd-vp/ejp-rd-metadata-swift.git", from: "0.1.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "MolgenisClient", "OpenCombine", "RSQL", "EJPRDMetadata"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

