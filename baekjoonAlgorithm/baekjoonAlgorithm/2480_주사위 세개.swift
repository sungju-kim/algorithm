//
//  2480_주사위 세개.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/08/12.
//

import Foundation

func p2480() {
    let dices = readLine()!.components(separatedBy: " ").map { Int($0)! }

    let counts = dices.map { dice in
        dices.filter { $0 == dice }.count
    }

    let max = counts.enumerated().max(by: { $0.element < $1.element })!

    switch max.element {
    case 3:
        print(10000 + dices[max.offset] * 1000)
    case 2:
        print(1000 + dices[max.offset] * 100)
    default:
        print(dices.max()! * 100)
    }
}
