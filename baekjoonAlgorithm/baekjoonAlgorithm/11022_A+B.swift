//
//  11022_A+B.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/13.
//

import Foundation

func p11022() {
    let inputN = readLine() ?? "0"
    guard let inputInt = Int(inputN) else {return}
    for i in 1...inputInt {
        let input = readLine()?.components(separatedBy: " ").compactMap{Int($0)}
        guard let input = input else {return}
        print("Case #\(i): \(input[0]) + \(input[1]) = \(input[0]+input[1])")
    }
    return
}

