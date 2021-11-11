//
//  A+B_11021.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/11.
//

import Foundation
func p11021() {
    guard let inputT = readLine() else {return}
    guard let inputT = Int(inputT) else {return}
    for i in 1...inputT {
        guard let inputArr = readLine()?.components(separatedBy: " ") else {return}
        guard let inputA = Int(inputArr[0]) else {return}
        guard let inputb = Int(inputArr[1]) else {return}
        print("Case #\(i): \(inputA + inputb)")
    }
    
}
