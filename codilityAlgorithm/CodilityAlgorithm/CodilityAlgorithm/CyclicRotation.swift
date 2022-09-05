//
//  CyclicRotation.swift
//  CodilityAlgorithm
//
//  Created by dale on 2022/09/05.
//

import Foundation

struct CyclicRotation {
    static func solution(_ A : inout [Int], _ K : Int) -> [Int] {
        let count = A.count
        if count == 1 || count == 0 || K == 0 { return A }
        var temp: [Int] = []
        let k = K % count
        for _ in 0..<k {
            temp.append(A.removeLast())
        }
        temp.reverse()
        temp += A
        return temp
    }
}
