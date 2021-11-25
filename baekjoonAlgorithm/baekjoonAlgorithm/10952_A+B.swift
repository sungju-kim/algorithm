//
//  10952_A+B.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/11.
//

import Foundation

func p10952() {
    while true {
        guard let input = readLine()?.components(separatedBy: " ") else {return}
        guard let inputA = Int(input[0]) else{return}
        guard let inputB = Int(input[1]) else{return}
        if inputA == 0 && inputB == 0{
            break
        }
        print(inputA + inputB)
    }
}
