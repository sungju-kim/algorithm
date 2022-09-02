//
//  파괴되지않은건물.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/09/02.
//

import Foundation

struct 파괴되지않은건물 {
    static func solution(_ board:[[Int]], _ skill:[[Int]]) -> Int {
        let (n, m) = (board[0].count, board.count)
        var sum: [[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: m+1)

        for skill in skill {
            let (type, degree) = (skill[0], skill[5])
            let start: (Int, Int) = (skill[1], skill[2])
            let end: (Int, Int) = (skill[3], skill[4])

            let damage: Int = type == 1 ? -degree : degree

            sum[start.0][start.1] = damage
            sum[start.0][end.1] = -damage
            sum[end.0][start.1] = -damage
            sum[end.0][end.1] = damage
        }

        for i in 0...m {
            for j in 1...n {
                sum[i][j] += sum[i][j-1]
            }
        }

        for i in 1...m {
            for j in 0...n {
                sum[i][j] += sum[i-1][j]
            }
        }
        
        let boardSum = board.reduce(into: []) { $0 += $1 }
        let sumSum = sum.reduce(into: []) { $0 += $1 }
        let result = zip(boardSum, sumSum).map {$0 + $1}

        return result.filter { $0 > 0}.count
    }
}
