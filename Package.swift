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
            url: "https://github.com/notsy-bv/adwall_mobile_sdk_ios_resources/releases/download/1.0.1/MembranaAdWallSDK-1.0.1.xcframework.zip",
            checksum: "60516179a6b7d8f8679b01f52f7e3cdbe6b53a804c4d8571c3a5f11c6c88f731"
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
