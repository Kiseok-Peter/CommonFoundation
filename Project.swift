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
                        .external(name: "Quick"),
                        .external(name: "Nimble"),
                      ])]

let project = Project(name: name,
                      targets: targets)
