//
//  A+B_10950.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p10950(){
    let input = Int(readLine()!)!
    for _ in 1...input{
        let inputNum = readLine()!.components(separatedBy: " ").map{Int($0)!}
        print(inputNum[0] + inputNum[1])
    }
}
