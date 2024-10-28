import ProjectDescription
import ProjectDescriptionHelpers
import TuistTemplate

// MARK: - Project

let targets = Module.allCases.map { Target(with: $0) }

let project = Project(name: Module.foundation.rawValue,
                      targets: targets)
