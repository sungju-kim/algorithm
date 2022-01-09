//
//  70_ClimbingStairs.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2022/01/09.
//

class ClimbStairsSolution {
    func climbStairs(_ n: Int) -> Int {
        var dp : [Int] = [0,1,2,3]
        if n <= 3 {
            return dp[n]
        }
        for i in 4...n {
            dp.append(dp[i-1]+dp[i-2])
        }
        return dp[n]
    }
}

let climbStairsSolution = ClimbStairsSolution()
