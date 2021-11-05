//
//  사칙연산_10869.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p10869() {
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    print(input[0]+input[1])
    print(input[0]-input[1])
    print(input[0]*input[1])
    print(input[0]/input[1])
    print(input[0]%input[1])
}

