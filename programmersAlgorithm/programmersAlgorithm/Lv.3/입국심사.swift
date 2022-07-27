//
//  입국심사.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/27.
//

import Foundation

struct 입국심사 {
    static func solution(_ n:Int, _ times:[Int]) -> Int64 {
        var min = 1
        var max = times.max()! * n

        var answer: Int = 0
        while max >= min {
            let median = (max + min) / 2

            let passed = times.reduce(0) { $0 + median / $1 }

            if passed < n {
                min = median + 1
                continue
            }
            max = median - 1
            answer = median
        }
        return Int64(answer)
    }
}
