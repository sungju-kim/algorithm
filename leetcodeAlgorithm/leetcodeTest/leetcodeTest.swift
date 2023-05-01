//
//  leetcodeTest.swift
//  leetcodeTest
//
//  Created by dale on 2023/05/01.
//

import XCTest

final class leetcodeTest: XCTestCase {
    func test3Sum() {
        let input1 = [-1,0,1,2,-1,-4]
        let output1 = [[-1,-1,2],[-1,0,1]]
        let input2 = [0,1,1]
        let output2:[[Int]] = []
        let input3 = [0, 0, 0]
        let output3 = [[0, 0, 0]]

        let threeSum = ThreeSum()
        XCTAssertTrue(threeSum.solution(input1) == output1)
        XCTAssertTrue(threeSum.solution(input2) == output2)
        XCTAssertTrue(threeSum.solution(input3) == output3)
    }
}
