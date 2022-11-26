//
//  2775_부녀회장이 될테야.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/11/26.
//

import Foundation

struct 부녀회장이될테야 {
    func solution() {
        for _ in 0..<Int(readLine()!)! {
            print(reculsive(Int(readLine()!)!, Int(readLine()!)!))
        }

        func reculsive(_ floor: Int, _ unit: Int) -> Int {
            if floor == 0 || (0...1) ~= unit { return unit }

            return reculsive(floor - 1, unit) + reculsive(floor, unit - 1)
        }
    }
}
