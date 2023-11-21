//
//  ClosedRange.swift
//  CommonFoundation
//
//  Created by kiseok.park on 11/21/23.
//

import Foundation

// MARK: ClosedRange Contains 기능
public extension ClosedRange {
    static func ~= (lhs: Self, rhs: Self) -> Bool {
        rhs.clamped(to: lhs) == rhs
    }
}
