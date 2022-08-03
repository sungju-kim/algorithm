//
//  NQueen.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/08/03.
//

import Foundation

struct NQueen {
    static func solution(_ n:Int) -> Int {
        var map: [Int] = Array(repeating: 0, count: n)

        let isAble: (Int, Int) -> Bool = { current, x in
            for before in 0..<current {
                if abs(current - before) == abs(map[before] - x) || map[before] == x { return false }
            }
            return true
        }

        var answer: Int = 0
        func dfs(_ queen: Int) {
            if queen == n {
                answer += 1
                return
            }
            (0..<n)
                .filter { isAble(queen, $0) }
                .forEach {
                    map[queen] = $0
                    dfs(queen + 1)
                }
        }
        dfs(0)
        return answer
    }
}
