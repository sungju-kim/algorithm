//
//  10757_큰수.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2022/01/05.
//

import Foundation
func p10757() {
    let inputArr = readLine()!.components(separatedBy: " ").map{String($0)}
    let inputA = Array(inputArr[0].reversed()).map{Int(String($0))!}, inputB = Array(inputArr[1].reversed()).map{Int(String($0))!}
    let maxNum = [inputA.count,inputB.count].max()!
    var resultArr : [Int] = Array(repeating: 0, count: maxNum)
    (0..<inputA.count).forEach{resultArr[$0] = inputA[$0]}
    (0..<inputB.count).forEach{resultArr[$0] += inputB[$0]}
    (0..<resultArr.count-1).forEach{
        if resultArr[$0] >= 10 {
            resultArr[$0] -= 10
            resultArr[$0+1] += 1
        }
    }
    if resultArr[maxNum-1] >= 10 {
        resultArr[maxNum-1] %= 10
        resultArr.append(1)
    }
    print(Array(resultArr.reversed()).map{String($0)}.joined())
}
