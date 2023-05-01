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
        let input4 = [1,2,-2,-1]
        let output4: [[Int]] = []
        let input5 = [-2,0,1,1,2]
        let output5 = [[-2,0,2],[-2,1,1]]

        let threeSum = ThreeSum()
//        let result1 = threeSum.solution(input1)
//        let result2 = threeSum.solution(input2)
//        let result3 = threeSum.solution(input3)
//        let result4 = threeSum.solution(input4)
        let result5 = threeSum.solution(input5)

//        XCTAssertTrue(Set(result1) == Set(output1), "\(Set(result1)) != \(Set(output1))")
//        XCTAssertTrue(Set(result2) == Set(output2), "\(Set(result2)) != \(Set(output2))")
//        XCTAssertTrue(Set(result3) == Set(output3), "\(Set(result3)) != \(Set(output3))")
//        XCTAssertTrue(Set(result4) == Set(output4), "\(Set(result4)) != \(Set(output4))")
        XCTAssertTrue(Set(result5) == Set(output5), "\(Set(result5)) != \(Set(output5))")
    }
}
