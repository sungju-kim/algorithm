//
//  746_MinCostClimbingStairs.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2022/01/09.
//
class MinCostClimbingStairsSolution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var dp : [Int] = Array(repeating: 0, count: cost.count)
        dp[0] = cost[0]
        dp[1] = cost[1]
        if cost.count < 3 {
            return cost.min()!
        }
       
        for i in 2...cost.count-1{
            dp[i] = min(dp[i-1], dp[i-2]) + cost[i]
        }
        return min(dp[cost.count-1],dp[cost.count-2])
    }
}

let minCostClimbingStairsSolution = MinCostClimbingStairsSolution()
