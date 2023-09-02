//
//  Structure.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2023/09/02.
//

import Foundation

class Stack {
    var arr: [Int] = []
    var count: Int = 0

    func push(num: Int) {
        arr.append(num)
        count += 1
    }

    func pop() -> Int {
        guard let _ = arr.last else { return -1 }
        count -= 1
        return arr.removeLast()
    }

    func size() -> Int {
        return count
    }

    func empty() -> Int {
        return arr.isEmpty ? 1 : 0
    }

    func top() -> Int {
        guard let last = arr.last else { return -1 }
        return last
    }
}
