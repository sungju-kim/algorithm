//
//  1149_RGB거리.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/07/07.
//

import Foundation

func p1149() {
    let n = Int(readLine()!)!

    var houses: [[Int]] = []

    var dp = Array(repeating: Array(repeating: 0, count: 3), count: n+1)
    for _ in 0..<n {
        let colors = readLine()!.components(separatedBy: " ").map{Int($0)!}
        houses.append(colors)
    }
    dp[0] = houses[0]
    for i in 1..<n {
        for j in 0...2 {
            dp[i][j] = min(dp[i-1][(j+1)%3], dp[i-1][(j+2)%3]) + houses[i][j]
        }
    }

    print(dp[n-1].min()!)
}
