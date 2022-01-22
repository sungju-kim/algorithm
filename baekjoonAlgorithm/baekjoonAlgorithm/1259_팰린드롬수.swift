//
//  1259_팰린드롬수.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/01/22.
//

import Foundation
func p1259() {
    while true {
        let input = Int(readLine()!)!
        if input == 0 {
            break
        }
        var result = Array(String(input))
        result.reverse()
        Array(String(input))==result ? print("yes") : print("no")
    }
}
