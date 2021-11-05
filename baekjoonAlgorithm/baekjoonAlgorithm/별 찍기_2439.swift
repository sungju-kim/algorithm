//
//  별 찍기_2439.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation
func p2439() {
    let input = Int(readLine()!)!
    for i in 1...input{
        let star = String(repeating: "*", count: i)
        let blank = String(repeating: " ", count: input-i)
        print(blank, terminator: "")
        print(star)
    }
}
