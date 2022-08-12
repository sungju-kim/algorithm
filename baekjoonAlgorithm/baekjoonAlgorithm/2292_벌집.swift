//
//  2292_벌집.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/08/12.
//

import Foundation

func p2292() {
    let target = Int(readLine()!)!
    var temp = 1
    for i in 1...target {
        if target <= temp {
            print(i)
            break
        }
        temp += i * 6
    }
}
