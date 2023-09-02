//
//  TestAddTwoNumbers.swift
//  leetcodeTest
//
//  Created by dale on 2023/09/02.
//

import XCTest

final class TestAddTwoNumbers: XCTestCase {

    func testSolution() {
        let problem = AddTwoNumbers()
        let input1 = (ListNode.generate(arr: [2, 4, 3]), ListNode.generate(arr: [5, 6, 4]))
        let output1 = ListNode.generate(arr: [7, 0, 8])

        let result1 = problem.solution(input1)
        XCTAssertTrue(result1 == output1, "\(result1!) != \(output1!)")

        let input2 = (ListNode.generate(arr: [0]), ListNode.generate(arr: [0]))
        let output2 = ListNode.generate(arr: [0])
        let result2 = problem.solution(input2)
        XCTAssertTrue(result2 == output2, "\(result2!) != \(output2!)")

        let input3 = (ListNode.generate(arr: [9,9,9,9,9,9,9]), ListNode.generate(arr: [9,9,9,9]))
        let output3 = ListNode.generate(arr: [8,9,9,9,0,0,0,1])
        let result3 = problem.solution(input3)
        XCTAssertTrue(result3 == output3, "\(result3!) != \(output3!)")
    }
    
}
