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
            url: "https://github.com/notsy-bv/adwall_mobile_sdk_ios_resources/releases/download/1.0.0/MembranaAdWallSDK-1.0.0.xcframework.zip",
            checksum: "fb9d655497489e23b47280620a751cbaf4af0432b0ff5990400bc49445fa1625"
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
