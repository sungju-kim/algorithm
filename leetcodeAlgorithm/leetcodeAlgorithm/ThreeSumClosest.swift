//
//  ThreeSumClosest.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2023/05/01.
//

import Foundation

struct ThreeSumClosest: Problem {
    typealias Input = ([Int], Int)
    typealias Output = Int

    func solution(_ input: ([Int], Int)) -> Int {
        let nums = input.0.sorted()
        let target = input.1
        let count = nums.count
        var answer = 0
        var close = Int.max

        for a in 0..<count-2 {
            if a > 0 && nums[a] == nums[a-1] {
                continue
            }

            var b = a + 1
            var c = count-1

            while b < c {
                let sum = nums[a] + nums[b] + nums[c]
                let difference = abs(sum - target)
                
                if difference < close {
                    answer = sum
                    close = difference
                }
                if sum < target {
                    b += 1
                } else {
                    c -= 1
                }
            }
        }

        return answer
    }
}
