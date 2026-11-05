// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MembranaAdWallSDK",
    platforms: [.iOS(.v15)],
    products: [.library(name: "MembranaAdWallSDK", targets: ["MembranaAdWallSDKDependencies"])],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "13.11.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "MembranaAdWallSDK",
            url: "https://github.com/notsy-bv/adwall_mobile_sdk_ios_resources/releases/download/1.0.3/MembranaAdWallSDK-1.0.3.xcframework.zip",
            checksum: "170cff4b38d85f424d75760e7ec47a3705644dee30b2383fb7ac8e05a7d315b0"
        ),
        .target(
            name: "MembranaAdWallSDKDependencies",
            dependencies: [
                "MembranaAdWallSDK",
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads")
            ]
        )
    ]
)
