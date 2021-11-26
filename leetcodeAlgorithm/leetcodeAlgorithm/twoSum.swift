//
//  twoSum.swift
//  leetcodeAlgorithm
//
//  Created by 성주 on 2021/11/26.
//

import Foundation

class SolutionTwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result : [Int] = []
        for i in 0..<nums.count {
            for j in i+1..<nums.count{
                if (nums[i] + nums[j]) == target {
                    result = [i, j]
                    return result
                }
            }
        }
        return result
    }
}

let solutionTwoSum = SolutionTwoSum()
