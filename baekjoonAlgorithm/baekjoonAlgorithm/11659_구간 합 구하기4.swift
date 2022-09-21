//
//  11659_구간 합 구하기4.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/09/21.
//

import Foundation

struct 구간합구하기4 {
    var n: Int
    var m: Int
    var nums: [Int]

//     시간초과
//    func solution(i: Int, j: Int) -> Int {
//        return nums[i-1...j-1].reduce(0, +)
//    }

    func solution(i: Int, j: Int) -> Int {
        var sum = Array(repeating: 0, count: nums.count + 1)

        for x in 1...n {
            sum[x] = sum[x-1] + nums[x-1]
        }

        return sum[j] - sum[i-1]
    }




}
