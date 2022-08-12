//
//  2525_오븐시계.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/08/12.
//

import Foundation

func p2525() {
    var input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    input[1] += Int(readLine()!)!
    input[0] += input[1] / 60
    input[1] = input[1] % 60

    if input[0] >= 24 { input[0] -= 24 }
    print("\(input[0]) \(input[1])")
}
