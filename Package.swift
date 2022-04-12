// swift-tools-version:5.3
///
///  Package.swift
///
///  Created by Tony Stone on 04/07/2022.
///
import PackageDescription

let package = Package(
    name: "Reachability",
    platforms: [.iOS(.v8), .macOS(.v10_10), .tvOS(.v9)],
    products: [
      .library(
        name: "Reachability",
        targets: ["Reachability"]
      )],
    targets: [
        /// Module targets
        .target(
            name: "Reachability",
            dependencies: [],
            path: "./",
            exclude: ["Reachability.podspec", "Framework/", "iOSReachabilityTestARC/", "MacOSReachabilityTestARC/"],
            publicHeadersPath: "include/",
            cSettings: [
                .headerSearchPath("include/Reachability")
            ])
])

