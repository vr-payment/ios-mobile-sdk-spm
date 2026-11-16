// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "VRPaymentSdk",
    platforms: [.iOS("15.1")],
    products: [
        .library(
            name: "VRPaymentSdk",
            targets: ["VRPaymentSdk", "ThreeDS_SDK", "hermes"]
        )
    ],
    targets: [
        .binaryTarget(name: "ThreeDS_SDK", path: "./ThreeDS_SDK.xcframework"),
        .binaryTarget(name: "VRPaymentSdk", path: "./VRPaymentSdk.xcframework"),
        .binaryTarget(name: "hermes", path: "./hermes.xcframework")
    ]
)
