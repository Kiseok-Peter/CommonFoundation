import ProjectDescription
import TuistTemplate

// MARK: - Project

let name = "CommonFoundation"
let organizationName = "kr.kiseok"

let targets = [Target(name: name,
                      product: .framework,
                      bundleName: organizationName,
                      sources: [
                        "\(name)/Sources/**"
                      ]),
               Target(name: "\(name)Tests",
                      product: .unitTests,
                      bundleName: organizationName,
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
