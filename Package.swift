// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "OpenSSL",
    products: [
        .library(name: "OpenSSL", targets: ["OpenSSL"])
    ],
    targets: [
        .systemLibrary(
            name: "OpenSSL",
            pkgConfig: "openssl",
            providers: [
                .apt(["openssl libssl-dev"]),
                .brew(["openssl"]),
            ]
        )
    ]
)
