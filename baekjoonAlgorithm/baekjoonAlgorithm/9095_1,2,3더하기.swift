//
//  p9095.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/07/07.
//

import Foundation

func p9095() {
    for _ in 0..<Int(readLine()!)! {
        var dp: [Int] = [0,1,2,4]
        let n = Int(readLine()!)!
        
        if n < 4 {
            print(dp[n])
            continue
        }
        for i in 4...n {
            dp.append(dp[i-1] + dp[i-2] + dp[i-3])
        }
        print(dp[n])
    }
}
