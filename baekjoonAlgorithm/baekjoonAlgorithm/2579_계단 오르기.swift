//
//  2579_계단 오르기.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/07/07.
//

import Foundation

func p2579() {
    let n = Int(readLine()!)!

    var stairs: [Int] = []
    var scores: [Int] = []
    for _ in 0..<n {
        stairs.append(Int(readLine()!)!)
        scores.append(0)
    }

    switch n {
    case 1:
        print(stairs[0])
    case 2:
        print(stairs[0] + stairs[1])
    case 3:
        print(max(stairs[0] + stairs[2], stairs[1] + stairs[2]))
    default:
        scores[0] = stairs[0]
        scores[1] = stairs[0] + stairs[1]
        scores[2] = max(stairs[0] + stairs[2], stairs[1] + stairs[2])

        for i in 3..<n {
            scores[i] = max(stairs[i] + scores[i-2], stairs[i] + stairs[i-1] + scores[i-3])
        }
        print(scores[n-1])
    }

}
