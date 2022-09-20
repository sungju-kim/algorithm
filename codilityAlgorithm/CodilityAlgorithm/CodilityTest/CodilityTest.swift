//
//  CodilityTest.swift
//  CodilityTest
//
//  Created by dale on 2022/09/05.
//

import XCTest

class CodilityTest: XCTestCase {

    func testMergeArray() {
        var A = [1, 2, 4, 3]
        var B = [1, 3, 2, 3]
        var A2 = [3, 2, 1, 6, 5]
        var B2 = [4, 2, 1, 3, 3]
        var A3 = [1, 2]
        var B3 = [1, 2]

        let value = MergeArray.solution(&A, &B), result = 2
        let value2 = MergeArray.solution(&A2, &B2), result2 = 3
        let value3 = MergeArray.solution(&A3, &B3), result3 = 3

        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result2, "\(value2) != \(result2)")
        XCTAssertTrue(value3 == result3, "\(value3) != \(result3)")
    }

    func testStringCost() {
        var string = "abccbd"
        var C = [0, 1, 2, 3, 4, 5]
        var string2 = "aabbcc"
        var C2 = [1, 2, 1, 2, 1, 2]
        var string3 = "aaaa"
        var C3 = [3, 4, 5, 6]
        var string4 = "ababa"
        var C4 = [10, 5, 10, 5, 10]
        let value = StringCost.solution(&string, &C), result = 2
        let value2 = StringCost.solution(&string2, &C2), result2 = 3
        let value3 = StringCost.solution(&string3, &C3), result3 = 12
        let value4 = StringCost.solution(&string4, &C4), result4 = 0

        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result2, "\(value2) != \(result2)")
        XCTAssertTrue(value3 == result3, "\(value3) != \(result3)")
        XCTAssertTrue(value4 == result4, "\(value4) != \(result4)")
    }

    func testWoodenStick() {
        let value = WoodenStick.solution(10, 21), result = 7
        let value2 = WoodenStick.solution(13, 11), result2 = 5
        let value3 = WoodenStick.solution(2, 1), result3 = 0
        let value4 = WoodenStick.solution(1, 8), result4 = 2

        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result2, "\(value2) != \(result2)")
        XCTAssertTrue(value3 == result3, "\(value3) != \(result3)")
        XCTAssertTrue(value4 == result4, "\(value4) != \(result4)")
    }

    func testCyclicRotation() {
        var array = [3, 8, 9, 7, 6]
        var array2 = [0, 0, 0]
        var array3 = [1, 2, 3, 4]
        var array4: [Int] = []
        var array5 = [1]
        let value = CyclicRotation.solution(&array, 3), result = [9, 7, 6, 3, 8]
        let value2 = CyclicRotation.solution(&array2, 1), result2 = [0, 0, 0]
        let value3 = CyclicRotation.solution(&array3, 4), result3 = [1, 2, 3, 4]
        let value4 = CyclicRotation.solution(&array4, 4), result4: [Int] = []
        let value5 = CyclicRotation.solution(&array5, 4), result5 = [1]

        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result2, "\(value2) != \(result2)")
        XCTAssertTrue(value3 == result3, "\(value3) != \(result3)")
        XCTAssertTrue(value4 == result4, "\(value4) != \(result4)")
        XCTAssertTrue(value5 == result5, "\(value5) != \(result5)")
    }

}
