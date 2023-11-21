//
//  ClosedRange.swift
//  CommonFoundation
//
//  Created by kiseok.park on 11/21/23.
//

import Foundation

public extension ClosedRange {
    static func ~= (lhs: Self, rhs: Self) -> Bool {
        rhs.clamped(to: lhs) == rhs
    }
}
