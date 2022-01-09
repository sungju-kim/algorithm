//
//  1463_1로 만들기.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/12/20.
//
import Foundation
func p1463(){
    let num = Int(readLine()!)!
    var dp : [Int] = Array(repeating: 0, count: num+1)
    if num == 1 {
        print("0")
        return
    }
    for i in 2...num{
        dp[i] = dp[i-1] + 1
        if i % 2 == 0 {
            dp[i] = min(dp[i], dp[i/2] + 1)
        }
        if i % 3 == 0 {
            dp[i] = min(dp[i], dp[i/3] + 1)
        }
    }
    print(dp[num])
}
