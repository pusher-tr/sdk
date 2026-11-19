// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PusherCore",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(name: "PusherCore", targets: ["PusherCore"]),
    ],
    targets: [
        .target(
            name: "PusherCore",
            path: "Sources/PusherCore",
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ]
        )
    ]
)
