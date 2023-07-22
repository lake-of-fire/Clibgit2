// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Clibgit2",
    platforms: [.iOS(.v16), .macOS(.v13)],
	products: [
		.library(name: "Clibgit2", targets: ["Clibgit2"])
	],
	targets: [
        .binaryTarget(
            name: "Clibgit2Binary",
            //url: "https://github.com/thebaselab/Clibgit2",
//            url: "https://github.com/allotropeinc/Clibgit2.git",
//            url: "https://github.com/lake-of-fire/Clibgit2.git",
            url: "https://github.com/lake-of-fire/LibGit2-On-iOS/releases/download/3/Clibgit2.xcframework.zip",
            checksum: "5bada79f34aed7d825dd8cbe07b8d177bd1a0e88ead0cff0c93cd477d9311372"
        ),
        .target(
            name: "Clibgit2",
            dependencies: ["Clibgit2Binary"],
            publicHeadersPath: "libgit2"
        )
	]
)
