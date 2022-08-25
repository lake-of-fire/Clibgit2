// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Clibgit2",
	pkgConfig: "libgit2",
	providers: [
		.brew(["libgit2"]),
		.apt(["libgit2"])
	],
	products: [
		.library(name: "Clibgit2", targets: ["Clibgit2"])
	],
	targets: [
		.systemLibrary(name: "Clibgit2", path: ".")
	]
)
