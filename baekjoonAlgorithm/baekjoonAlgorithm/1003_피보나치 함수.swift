//
//  1003_피보나치 함수.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/01/09.
//

import Foundation

func p1003() {
    let caseNum = Int(readLine()!)!
    for _ in 0..<caseNum {
        let num = Int(readLine()!)!
        var dpA : [Int] = Array(repeating: 0 , count: num+1)
        var dpB : [Int] = Array(repeating: 0, count: num+1)
        if num == 0 {
            print("1 0")
        }else if num == 1 {
            print("0 1")
        }else if num == 2 {
            print("1 1")
        }else{
            dpA[1] = 1
            dpB[0] = 1
            dpB[2] = 1
            for i in 2..<num+1 {
                dpA[i] = dpA[i-1] + dpA[i-2]
                dpB[i] = dpB[i-1] + dpB[i-2]
            }
            print(dpB[num], dpA[num])
        }
    }
}

