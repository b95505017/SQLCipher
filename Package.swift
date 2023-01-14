// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SQLCipher",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SQLCipher",
            targets: ["SQLCipher"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SQLCipher",
            dependencies: [],
            cSettings: [
                .define("SQLITE_HAS_CODEC", to: "1"),
                .define("SQLITE_TEMP_STORE", to: "2"),
                .define("SQLITE_SOUNDEX", to: nil),
                .define("SQLITE_THREADSAFE", to: nil),
                .define("SQLITE_ENABLE_RTREE", to: nil),
                .define("SQLITE_ENABLE_STAT3", to: nil),
                .define("DSQLITE_ENABLE_STAT4", to: nil),
                .define("SQLITE_ENABLE_COLUMN_METADATA", to: nil),
                .define("SQLITE_ENABLE_MEMORY_MANAGEMENT", to: nil),
                .define("SQLITE_ENABLE_LOAD_EXTENSION", to: nil),
                .define("SQLITE_ENABLE_FTS4", to: nil),
                .define("SQLITE_ENABLE_FTS4_UNICODE61", to: nil),
                .define("SQLITE_ENABLE_FTS3_PARENTHESIS", to: nil),
                .define("SQLITE_ENABLE_UNLOCK_NOTIFY", to: nil),
                .define("SQLITE_ENABLE_JSON1", to: nil),
                .define("SQLITE_ENABLE_FTS5", to: nil),
                .define("SQLCIPHER_CRYPTO_CC", to: nil),
                .define("HAVE_USLEEP", to: "1"),
                .define("SQLITE_MAX_VARIABLE_NUMBER", to: "99999"),
                .define("NDEBUG", to: "1")
            ],
            swiftSettings: [
                .define("SQLITE_HAS_CODEC"),
            ]
            ,linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("Security")
            ]
        ),
        .testTarget(
            name: "SQLCipherTests",
            dependencies: ["SQLCipher"]),
    ]
)
