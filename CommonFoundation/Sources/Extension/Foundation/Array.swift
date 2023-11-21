//
//  Array.swift
//  CommonFoundation
//
//  Created by kiseok.park on 11/21/23.
//

import Foundation

// MARK: Array safe 기능
public extension Array {
    /// index 추출 safe 기능
    subscript(safe index: Index) -> Element? { indices ~= index ? self[index] : nil }
    
    /// range slice safe 기능
    subscript(safe range: Range<Int>) -> Array<Element>? {
        indices ~= range ? Array(self[range]) : nil
    }
    
    /// close range slice safe 기능
    subscript(safe range: ClosedRange<Int>) -> Array<Element>? {
        indices ~= range ? Array(self[range]) : nil
    }
}
