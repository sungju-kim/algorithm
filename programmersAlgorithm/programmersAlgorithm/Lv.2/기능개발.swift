//
//  기능개발.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/14.
//

import Foundation

struct 기능개발 {
    static func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
        var queue: [Int] = progresses.enumerated().map {
            let remain = (100 - $1)
            return remain / speeds[$0] + (remain % speeds[$0] == 0 ? 0 : 1)
        }
        var answer: [Int] = []
        while !queue.isEmpty {
            let day = queue.popFirst()
            var count = 1
            for _ in 0..<queue.count {
                guard let next = queue.first, next <= day else { break }
                _ = queue.popFirst()
                count += 1
            }
            answer.append(count)
        }
        return answer
    }
}

extension Array {
    mutating func popFirst() -> Element {
        var reversed: Self = self.reversed()
        let first = reversed.removeLast()
        self = reversed.reversed()
        return first
    }
}
