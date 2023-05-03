//
//  leetcodeTest.swift
//  leetcodeTest
//
//  Created by dale on 2023/05/01.
//

import XCTest

final class leetcodeTest: XCTestCase {
    

    func test2215() {
        let problem = FindTheDifferenceOfTwoArrays()
        let input1 = ([1,2,3], [2,4,6])
        let output1 = [[1,3],[4,6]]
        let input2 = ([1,2,3,3], [1,1,2,2])
        let output2 = [[3],[]]

        let result1 = problem.solution(input1)
        let result2 = problem.solution(input2)

        let condition1 = compareArrays(result1, output1)
        let condition2 = compareArrays(result2, output2)
        XCTAssertTrue(condition1, "\(result1) != \(output1)")
        XCTAssertTrue(condition2, "\(result2) != \(output2)")
    }

//    func test3SumClosest() {
//        let threeSumClosest = ThreeSumClosest()
//        let input1 = ([-1,2,1,-4], 1)
//        let output1 = 2
//        let input2 = ([0, 0 ,0 ], 1)
//        let output2 = 0
//
//        let result1 = threeSumClosest.solution(input1)
//        let result2 = threeSumClosest.solution(input2)
//
//        XCTAssertTrue(result1 == output1, "\(result1) != \(output1)")
//        XCTAssertTrue(result2 == output2, "\(result2) != \(output2)")
//    }
//    
//    func test3Sum() {
//        let input1 = [-1,0,1,2,-1,-4]
//        let output1 = [[-1,-1,2],[-1,0,1]]
//        let input2 = [0,1,1]
//        let output2:[[Int]] = []
//        let input3 = [0, 0, 0]
//        let output3 = [[0, 0, 0]]
//        let input4 = [1,2,-2,-1]
//        let output4: [[Int]] = []
//        let input5 = [-2,0,1,1,2]
//        let output5 = [[-2,0,2],[-2,1,1]]
//
//        let threeSum = ThreeSum()
//        let result1 = threeSum.solution(input1)
//        let result2 = threeSum.solution(input2)
//        let result3 = threeSum.solution(input3)
//        let result4 = threeSum.solution(input4)
//        let result5 = threeSum.solution(input5)
//
//        XCTAssertTrue(Set(result1) == Set(output1), "\(Set(result1)) != \(Set(output1))")
//        XCTAssertTrue(Set(result2) == Set(output2), "\(Set(result2)) != \(Set(output2))")
//        XCTAssertTrue(Set(result3) == Set(output3), "\(Set(result3)) != \(Set(output3))")
//        XCTAssertTrue(Set(result4) == Set(output4), "\(Set(result4)) != \(Set(output4))")
//        XCTAssertTrue(Set(result5) == Set(output5), "\(Set(result5)) != \(Set(output5))")
//    }
}

extension leetcodeTest {
    func compareArrays(_ arrayA: [[Int]], _ arrayB: [[Int]]) -> Bool {
        if arrayA.count != arrayB.count {
            return false
        }

        // Sort the arrays of arrays by their elements
        let sortedA = arrayA.map { $0.sorted() }.sorted { $0 < $1 }
        let sortedB = arrayB.map { $0.sorted() }.sorted { $0 < $1 }

        // Recursively compare each sub-array
        for (subA, subB) in zip(sortedA, sortedB) {
            if subA != subB {
                return false
            }
        }

        return true
    }
}
