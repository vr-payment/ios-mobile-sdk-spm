// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "VRPaymentSdk",
    platforms: [.iOS("12.4")],
    products: [
        .library(name: "ReactBrownfield", targets: ["ReactBrownfield"]),
        .library(name: "ThreeDS_SDK", targets: ["ThreeDS_SDK"]),
        .library(name: "TwintSDK", targets: ["TwintSDK"]),
        .library(name: "VRPaymentSdk", targets: ["VRPaymentSdk"]),
        .library(name: "hermes", targets: ["hermes"])
    ],
    targets: [
        .binaryTarget(name: "ReactBrownfield", path: "./ReactBrownfield.xcframework"),
        .binaryTarget(name: "ThreeDS_SDK", path: "./ThreeDS_SDK.xcframework"),
        .binaryTarget(name: "TwintSDK", path: "./TwintSDK.xcframework"),
        .binaryTarget(name: "VRPaymentSdk", path: "./VRPaymentSdk.xcframework"),
        .binaryTarget(name: "hermes", path: "./hermes.xcframework")
    ]
)
