import ProjectDescription
import EnvPlugin

// MARK: - Project

let env = ProjectEnvHelper()

let targets = [Target(name: env.name,
                      product: .framework,
                      bundleName: env.organizationName,
                      sources: [
                        "\(env.name)/Sources/**"
                      ]),
               Target(name: "\(env.name)Tests",
                      product: .unitTests,
                      bundleName: env.organizationName,
                      sources: [
                        "\(env.name)/Tests/**"
                      ],
                      dependencies: [
                        .target(name: env.name),
                        .package(product: "Quick"),
                        .package(product: "Nimble"),
                      ])]

let project = Project(name: env.name,
                      packages: [
                        .remote(url:"https://github.com/Quick/Quick.git",
                                requirement: .upToNextMajor(from: "7.0.0")),
                        .remote(url:"https://github.com/Quick/Nimble.git",
                                requirement: .upToNextMajor(from: "13.0.0"))
                      ],
                      targets: targets)
