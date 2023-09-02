//
//  TestRemoveDuplicatesFromSortedArray.swift
//  leetcodeTest
//
//  Created by dale on 2023/09/02.
//

import XCTest

final class TestRemoveDuplicatesFromSortedArray: XCTestCase {
    func testRemoveDuplicatesFromSortedArray() {
        let problem = RemoveDuplicatesFromSortedArray()

        var input1 = [1,1,2]
        let output1 = 2
        let result1 = problem.solution(&input1)

        XCTAssertTrue(input1 == [1,2], "\(input1) == \([1,2])")
        XCTAssertTrue(result1 == output1, "\(result1) != \(output1)")
        var input2 = [0,0,1,1,1,2,2,3,3,4]
        let output2 = 5
        let result2 = problem.solution(&input2)
        XCTAssertTrue(input2 == [0,1,2,3,4], "\(input2) == \([0,1,2,3,4])")
        XCTAssertTrue(result2 == output2, "\(result2) != \(output2)")
    }
}
