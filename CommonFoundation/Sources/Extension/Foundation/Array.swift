//
//  Array.swift
//  CommonFoundation
//
//  Created by kiseok.park on 11/21/23.
//

import Foundation

extension Array {
    public subscript(safe index: Index) -> Element? { indices ~= index ? self[index] : nil }
}
