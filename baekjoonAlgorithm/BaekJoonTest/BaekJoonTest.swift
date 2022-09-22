//
//  BaekJoonTest.swift
//  BaekJoonTest
//
//  Created by dale on 2022/09/21.
//

import XCTest

final class BaekJoonTest: XCTestCase {
    func testN과M_1() {
        let given = N과M_1()

        let case1 = given.solution(n: 3, m: 1), value1 = ["1", "2", "3"]
        let case2 = given.solution(n: 4, m: 2), value2 = ["1 2", "1 3", "1 4", "2 1", "2 3", "2 4", "3 1", "3 2", "3 4", "4 1", "4 2", "4 3"]
        let case3 = given.solution(n: 4, m: 4), value3 = ["1 2 3 4", "1 2 4 3", "1 3 2 4", "1 3 4 2", "1 4 2 3", "1 4 3 2", "2 1 3 4", "2 1 4 3", "2 3 1 4", "2 3 4 1", "2 4 1 3", "2 4 3 1", "3 1 2 4", "3 1 4 2", "3 2 1 4", "3 2 4 1", "3 4 1 2", "3 4 2 1", "4 1 2 3", "4 1 3 2", "4 2 1 3", "4 2 3 1", "4 3 1 2", "4 3 2 1"]
        XCTAssertTrue(case1 == value1, "expect \(value1), result == \(case1))")
        XCTAssertTrue(case2 == value2, "expect \(value2), result == \(case2))")
        XCTAssertTrue(case3 == value3, "expect \(value3), result == \(case3))")
    }


    func test구간합구하기4() {
        let given = 구간합구하기4(n: 5, m: 3, nums: [5, 4, 3, 2, 1])

        let case1 = given.solution(i: 1, j: 3), value1 = 12
        let case2 = given.solution(i: 2, j: 4), value2 = 9
        let case3 = given.solution(i: 5, j: 5), value3 = 1
        XCTAssertTrue(case1 == value1, "expect \(value1), result == \(case1))")
        XCTAssertTrue(case2 == value2, "expect \(value2), result == \(case2))")
        XCTAssertTrue(case3 == value3, "expect \(value3), result == \(case3))")
    }

}
