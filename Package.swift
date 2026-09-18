// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MembranaAdWallSDK",
    platforms: [.iOS(.v14)],
    products: [.library(name: "MembranaAdWallSDK", targets: ["MembranaAdWallSDKDependencies"])],
    dependencies: [
        .package(
            url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
            from: "13.6.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "MembranaAdWallSDK",
            url: "https://github.com/notsy-bv/adwall_mobile_sdk_ios_resources/releases/download/0.1.0/MembranaAdWallSDK-0.1.0.xcframework.zip",
            checksum: "4beaf35d8e14f4aac1792598817f1d689f698fddfdad415b361b5c86cf53622e"
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
