//
//  짝지어 제거하기.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/13.
//

import Foundation

struct 짝지어제거하기 {
    static func solution(_ s:String) -> Int{
        var stack: [Character] = []
        for char in s {
            if let last = stack.last, char == last {
                stack.removeLast()
                continue
            }
            stack.append(char)
        }
        return stack.isEmpty ? 1 : 0
    }
}
