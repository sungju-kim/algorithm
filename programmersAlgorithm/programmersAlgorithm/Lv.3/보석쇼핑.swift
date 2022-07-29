//
//  보석쇼핑.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/27.
//

import Foundation

struct 보석쇼핑 {
    static func solution(_ gems:[String]) -> [Int] {
        let count = Set(gems).count
        var bag: [String:Int] = [:]
        let endIndex: Int = gems.count - 1

        var res: [Int] = [0, endIndex, endIndex + 1]

        var index = 0

        while index <= endIndex {
            bag[gems[index]] = index

            if bag.count == count {
                let min = bag.min { $0.value < $1.value }!.value
                let max = bag.max { $0.value < $1.value }!.value
                res = res[2] <= max - min + 1 ? res : [min, max, max - min + 1]
            }
            index += 1
        }
        return [res[0] + 1, res[1] + 1]
    }
}
