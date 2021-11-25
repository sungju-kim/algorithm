//
//  1110_더하기 사이클.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p1110() {
    var input = Int(readLine()!)!
    let check = input
    var cycle = 0
    while true {
        let numPlus = (input/10)+(input%10)
        let newNum = (input%10)*10 + (numPlus%10)
        cycle += 1
        input = newNum
        if newNum == check {
            break
        }
    }
    print(cycle)
}

