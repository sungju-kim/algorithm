//
//  14681_사분면 고르기.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/26.
//

import Foundation
func p14681(){
    let inputA = Int(readLine() ?? "0") ?? 0
    let inputB = Int(readLine() ?? "0") ?? 0
    let coordinate = (inputA, inputB)
    
    switch coordinate {
    case (0..., 0... ):
        print("1")
    case (...0, 0... ):
        print("2")
    case (0..., ...0 ):
        print("4")
    case (...0 ,...0 ):
        print("3")
    default:
        break
    }
}
