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
            url: "https://github.com/notsy-bv/adwall_mobile_sdk_ios_resources/releases/download/1.0.2/MembranaAdWallSDK-1.0.2.xcframework.zip",
            checksum: "a96663c4a476378e8f1beb2ac0578160433f49cec7051287a26e0d9333ff133f"
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
