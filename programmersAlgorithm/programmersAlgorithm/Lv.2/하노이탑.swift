//
//  하노이탑.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/26.
//

import Foundation

struct 하노이탑 {
    static func solution(_ n:Int) -> [[Int]] {
        if n == 1 { return [[1, 3]]}
        var result: [[Int]] = []

        func move(_ n: Int, from: Int, to: Int, temp: Int) {
            if n == 1 {
                result.append([from, to])
                return
            }
            move(n-1, from: from, to: temp, temp: to)
            result.append([from, to])
            move(n-1, from: temp, to: to, temp: from)
        }

        move(n, from: 1, to: 3, temp: 2)
        return result
    }
}
