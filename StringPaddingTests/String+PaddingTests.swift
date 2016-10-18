//
//  String+PaddingTests.swift
//  StringPadding
//
//  Created by Christian Tietze on 18/10/16.
//  Copyright © 2016 CleanCocoa. All rights reserved.
//
//  Distributed under the MIT License. See LICENSE file for details.
//

import XCTest
@testable import StringPadding

class StringPaddingTests: XCTestCase {

    func testLeftPad() {

        XCTAssertEqual(
            "foo".padded(length: 20, filler: " ", padding: .left),
            "                 foo")
        XCTAssertEqual(
            "x".padded(length: 10, filler: "y", padding: .left),
            "yyyyyyyyyx")
        XCTAssertEqual(
            "fizz".padded(length: 1, filler: "y", padding: .left),
            "fizz")
    }

    func testRightPad() {

        XCTAssertEqual(
            "bar".padded(length: 15, filler: " ", padding: .right),
            "bar            ")
        XCTAssertEqual(
            "1".padded(length: 5, filler: "0", padding: .right),
            "10000")
        XCTAssertEqual(
            "frobz".padded(length: 3, filler: " ", padding: .right),
            "frobz")
    }

    func testCenterPad() {

        XCTAssertEqual(
            "x".padded(length: 5, filler: " ", padding: .center),
            "  x  ")
        XCTAssertEqual(
            "xx".padded(length: 5, filler: "0", padding: .center),
            "0xx00")
        XCTAssertEqual(
            "12345".padded(length: 5, filler: "0", padding: .center),
            "12345")
    }
}
