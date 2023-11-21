//
//  Array.swift
//  CommonFoundation
//
//  Created by kiseok.park on 11/21/23.
//

import Foundation

public extension Array {
    subscript(safe index: Index) -> Element? { indices ~= index ? self[index] : nil }
    
    subscript(safe range: Range<Int>) -> Array<Element>? {
        indices ~= range ? Array(self[range]) : nil
    }
    
    subscript(safe range: ClosedRange<Int>) -> Array<Element>? {
        indices ~= range ? Array(self[range]) : nil
    }
}
