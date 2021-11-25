//
//  2914_저작권.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/25.
//

import Foundation

func p2914() {
    let input = readLine()?.components(separatedBy: " ").map{Int($0)!}
    guard let input = input else {return}
    print((input[0]*input[1])-input[0]+1)
    
}
