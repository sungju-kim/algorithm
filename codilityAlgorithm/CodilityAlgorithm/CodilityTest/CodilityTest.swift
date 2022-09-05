//
//  CodilityTest.swift
//  CodilityTest
//
//  Created by dale on 2022/09/05.
//

import XCTest

class CodilityTest: XCTestCase {

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
