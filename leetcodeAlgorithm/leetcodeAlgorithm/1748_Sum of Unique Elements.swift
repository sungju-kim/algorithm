//
//  1748_Sum of Unique Elements.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2022/04/05.
//

import Foundation

func p1748(_ nums: [Int]) -> Int {
    var results: [Int] = []
    nums.forEach{number in
        if nums.filter({$0 == number}).count == 1 {
            results.append(number)
        }
    }
    return results.reduce(0, {(num1: Int, num2: Int) -> Int in
        return num1 + num2
    })
}
