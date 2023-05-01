//
//  3Sum.swift
//  leetcodeTest
//
//  Created by dale on 2023/05/01.
//

import Foundation

struct ThreeSum: Problem {
    typealias Input = [Int]
    typealias Output = [[Int]]
    func solution(_ input: [Int]) -> [[Int]] {
        let nums = input.sorted()
        let count = nums.count
        var answer: [[Int]] = []

        for a in 0..<count - 2 {
            if a > 0 && nums[a] == nums[a - 1] {
                continue
            }

            var b = a + 1
            var c = count - 1

            while b < c {
                let sum = nums[a] + nums[b] + nums[c]

                switch true {
                case sum < 0:
                    b += 1
                case sum > 0:
                    c -= 1
                default:
                    answer.append([nums[a], nums[b], nums[c]])

                    repeat {
                        b += 1
                    } while b < c && nums[b] == nums[b-1]

                    repeat {
                        c -= 1
                    } while b < c && nums[c] == nums[c+1]
                }
            }
        }

        return answer
    }
}
