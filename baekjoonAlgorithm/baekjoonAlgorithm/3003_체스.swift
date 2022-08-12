//
//  3003_체스.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/08/12.
//

import Foundation

func p3003() {
    let origin = [1, 1, 2, 2, 2, 8]
    print(readLine()!
        .components(separatedBy: " ")
        .enumerated()
        .map{String(origin[$0] - Int($1)!)}
        .joined(separator: " "))
}
