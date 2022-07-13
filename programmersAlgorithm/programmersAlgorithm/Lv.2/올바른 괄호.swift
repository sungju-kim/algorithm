//
//  올바른 괄호.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/13.
//

import Foundation

struct 올바른괄호 {
    static func solution(_ s:String) -> Bool {
        var count = 0

        for char in s {
            let isSecond = char == ")"

            if isSecond && count == 0 { return false }

            count += isSecond ? -1 : 1
        }

        return count == 0
    }
}
