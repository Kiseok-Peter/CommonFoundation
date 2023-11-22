import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains CommonFoundation App target and CommonFoundation unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

let name = "CommonFoundation"

let targets = [Project.createTarget(name: name,
                                    product: .framework,
                                    sources: [
                                        "\(name)/Sources/**"
                                    ]),
               Project.createTarget(name: "\(name)Tests",
                                    product: .unitTests,
                                    sources: [
                                        "\(name)/Tests/**"
                                    ],
                                    dependencies: [
                                        .target(name: name),
                                        .package(product: "Quick"),
                                        .package(product: "Nimble"),
                                    ])]

let project = Project(name: name,
                      packages: [
                        .remote(url:"https://github.com/Quick/Quick.git",
                                requirement: .upToNextMajor(from: "7.0.0")),
                        .remote(url:"https://github.com/Quick/Nimble.git",
                                requirement: .upToNextMajor(from: "13.0.0"))
                      ],
                      targets: targets)
