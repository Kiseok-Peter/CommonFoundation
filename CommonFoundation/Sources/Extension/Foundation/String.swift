//
//  String.swift
//  CommonFoundation
//
//  Created by kiseok.park on 11/21/23.
//

import Foundation

// MARK: String to URL
extension String {
    /// URL 변환
    public var toURL: URL? {
        if isPercent, let encoded = addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
            return URL(string: encoded)
        } else {
            return URL(string: self)
        }
    }
    
    private var isPercent: Bool {
        removingPercentEncoding == self
    }
}
