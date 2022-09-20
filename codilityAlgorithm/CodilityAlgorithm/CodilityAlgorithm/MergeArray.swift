//
//  MergeArray.swift
//  CodilityAlgorithm
//
//  Created by dale on 2022/09/05.
//

import Foundation

struct MergeArray {
    static func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
        var result = 100000
        var sum = 0
        for (i, value)in A.enumerated() {
            sum += value
            if value == B[i] { continue }
            let minValue = min(value, B[i])
            result = min(result, minValue)
        }
        return result == 100000 ? sum : result
    }
}
