// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,] 
        productTypes: ["Quick": .framework,
                       "Nimble": .framework,]
    )
#endif

let package = Package(
    name: "CommonFoundation",
    products: [
        .library(name: "CommonFoundation",
                 targets: ["CommonFoundation"])
    ],
    dependencies: [
        // Add your own dependencies here:
        // .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0"),
        // You can read more about dependencies here: https://docs.tuist.io/documentation/tuist/dependencies
        .package(url: "https://github.com/Quick/Quick.git", from: "7.6.2"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "13.6.0"),
    ],
    targets: [
        .target(name: "CommonFoundation", path: "CommonFoundation"),
    ]
)
