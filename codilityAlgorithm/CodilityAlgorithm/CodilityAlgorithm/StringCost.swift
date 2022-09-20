//
//  StringCost.swift
//  CodilityAlgorithm
//
//  Created by dale on 2022/09/05.
//

import Foundation

struct StringCost {
    static func solution(_ S : inout String, _ C : inout [Int]) -> Int {
        let s: [String] = Array(S).map { String($0) }
        let count = s.count
        if count == 1 { return 0 }
        var deleted = 0
        (1..<count).forEach {
            deleted += s[$0-1] == s[$0] ? min(C[$0-1], C[$0]) : 0
        }
        return deleted
    }
}
