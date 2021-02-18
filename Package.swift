// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "MountMonitor",
    platforms: [.macOS(.v11)],
    targets: [
        .target(
            name: "MountMonitor",
            dependencies: []
        )
    ]
)
