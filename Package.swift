// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "VRPaymentSdk",
    platforms: [.iOS("12.4")],
    products: [
        .library(name: "VRPaymentSdk",
                 targets: ["ThreeDS_SDK","VRPaymentSdk","TwintSDK","PaymentResources"]),
    ],
    targets: [
		.binaryTarget(name: "ThreeDS_SDK", path: "ThreeDS_SDK.xcframework"),
		.binaryTarget(name: "VRPaymentSdk", path: "VRPaymentSdk.xcframework"),
		.binaryTarget(name: "TwintSDK", path: "TwintSDK.xcframework"),
	.target(
		name: "PaymentResources",
		dependencies: [
			.target(name: "VRPaymentSdk")
		],
		path: "Sources/PaymentResources",
		sources: ["PaymentResources.swift"],
		resources: [
			.process("vrpaymentsdkbundle.jsbundle")
		]
	)
    ]
)