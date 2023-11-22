//
//  ArraySpec.swift
//  CommonFoundationTests
//
//  Created by 박기석 on 11/22/23.
//

import Quick
import Nimble
@testable import CommonFoundation

final class ArraySpec: QuickSpec {
    override class func spec() {
        var array: [Int]!
        
        describe("Array safe 테스트") {
            beforeSuite {
                array = [1, 2, 3, 4, 5]
            }
            
            describe("safe index 기능 테스트") {
                context("index safe 범위 내 추출 시") {
                    var element: Int?
                    
                    beforeEach {
                        element = array[safe: 0]
                    }
                    
                    it("정상 Element 추출") {
                        expect(element).toNot(beNil())
                        expect(element).to(equal(1))
                    }
                }
                
                context("index safe 범위 외 추출 시") {
                    var element: Int?
                    
                    beforeEach {
                        element = array[safe: -1]
                    }
                    
                    it("nil 반환") {
                        expect(element).to(beNil())
                    }
                }
            }
            
            describe("safe range 기능 테스트") {
                context("range safe 범위 내 추출 시") {
                    var range: Range<Int>!
                    var subArray: Array<Int>?
                    
                    beforeEach {
                        range = 1 ..< 4
                        subArray = array[safe: range]
                    }
                    
                    it("정상 sub Array 추출") {
                        expect(subArray).toNot(beNil())
                        expect(subArray?.isEmpty).to(beFalse())
                        expect(subArray?.first).to(equal(array[safe: range.lowerBound]))
                        expect(subArray?.last).to(equal(array[safe: range.upperBound - 1]))
                    }
                }
                
                context("range safe 범위 외 추출 시") {
                    var range: Range<Int>!
                    var subArray: Array<Int>?
                    
                    beforeEach {
                        range = -1 ..< 5
                        subArray = array[safe: range]
                    }
                    
                    it("nil 반환") {
                        expect(subArray).to(beNil())
                    }
                }
            }
        }
    }
}
