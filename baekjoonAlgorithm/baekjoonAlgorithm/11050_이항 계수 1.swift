//
//  11050_이항 계수 1.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/28.
//

import Foundation

func p11050() {
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    let a = input[0]
    let b = input[1]
    func factorial(_ num : Int) -> Int{
        if num <= 1 {
            return 1
        }
        return num*factorial(num-1)
    }
    print(factorial(a)/(factorial(a-b)*factorial(b)))
}

