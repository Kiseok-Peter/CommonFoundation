//
//  Module.swift
//  CommonFoundationManifests
//
//  Created by 박기석 on 10/28/24.
//

import ProjectDescription
import TuistTemplate

public enum Module: String, CaseIterable {
    case foundation = "CommonFoundation"
//    case tests = "CommonFoundationTests"
}

extension Module: ModuleProtocol {
    public var product: Product {
        switch self {
        case .foundation: .framework
//        case .tests: .unitTests
        }
    }
    
    public var infoPlist: InfoPlist { .default }
    
    public var resources: ResourceFileElements? { nil }
    
    public var dependencies: [TargetDependency] {
        switch self {
        case .foundation: []
//        case .tests:
//            [.target(name: Module.foundation.rawValue),
//             .external(name: "Quick"),
//             .external(name: "Nimble"),]
        }
    }
}
