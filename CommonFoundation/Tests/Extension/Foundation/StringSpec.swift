//
//  StringSpec.swift
//  CommonFoundationTests
//
//  Created by 박기석 on 11/22/23.
//

import Quick
import Nimble
import Foundation
@testable import CommonFoundation

final class StringSpec: QuickSpec {
    override class func spec() {
        var urlString: String!
        
        describe("url string 변환 테스트") {
            context("정상적인 urlStirng 변환") {
                var url: URL?
                
                beforeEach {
                    urlString = "https://search.naver.com/search.naver?sm=top_hty&fbm=0&ie=utf8&query=아이유"
                    url = urlString.toURL
                }
                
                it("URL 반환") {
                    expect(url).toNot(beNil())
                    expect(url?.absoluteString).to(equal(urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)))
                }
            }
            
            context("한글 urlStirng 변환") {
                var url: URL?
                
                beforeEach {
                    urlString = "https://search.naver.com/search.naver?sm=top_hty&fbm=0&ie=utf8&query=%EC%95%84%EC%9D%B4%EC%9C%A0"
                    url = urlString.toURL
                }
                
                it("URL 반환") {
                    expect(url).toNot(beNil())
                    expect(url?.absoluteString).to(equal(urlString))
                }
            }
            
            context("url 포맷이 아닌 stirng 변환") {
                var url: URL?
                
                beforeEach {
                    urlString = ""
                    url = urlString.toURL
                }
                
                it("nil 반환") {
                    expect(url).to(beNil())
                }
            }
        }
    }
}
