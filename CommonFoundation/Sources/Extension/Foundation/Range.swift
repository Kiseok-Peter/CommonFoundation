//
//  Range.swift
//  CommonFoundation
//
//  Created by kiseok.park on 11/21/23.
//

import Foundation

// MARK: Range Contains 기능
public extension Range {
    static func ~= (lhs: Self, rhs: Self) -> Bool {
        rhs.clamped(to: lhs) == rhs
    }
    
    static func ~=(lhs: Self, rhs: ClosedRange<Bound>) -> Bool {
        lhs.lowerBound <= rhs.lowerBound && rhs.upperBound < lhs.upperBound
    }
}
