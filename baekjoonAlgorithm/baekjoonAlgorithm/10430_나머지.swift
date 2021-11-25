//
//  10430_나머지.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p10430() {
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    let (A, B, C ) = (input[0], input[1], input[2])
    print((A+B)%C)
    print(((A%C) + (B%C))%C)
    print((A*B)%C)
    print(((A%C) * (B%C))%C)
}
