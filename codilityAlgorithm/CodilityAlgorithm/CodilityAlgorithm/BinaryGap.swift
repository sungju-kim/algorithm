//
//  BinaryGap.swift
//  CodilityAlgorithm
//
//  Created by dale on 2022/09/05.
//

import Foundation

struct BinaryGap {
    static func solution(_ N : Int) -> Int {
        let binary = String(N, radix: 2)
        var answer = 0
        var temp = 0

        for char in binary {
            if char == "0" {
                temp += 1
                continue
            }
            answer = max(answer, temp)
            temp = 0
        }
        return answer
    }
}
