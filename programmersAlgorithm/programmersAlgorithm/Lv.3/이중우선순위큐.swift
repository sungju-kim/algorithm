//
//  이중우선순위큐.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/19.
//

import Foundation

struct 이중우선순위큐 {
    static func solution(_ operations:[String]) -> [Int] {
        var heap: [Int] = []

        for operation in operations {
            switch operation {
            case "D -1":
                if heap.isEmpty { continue }
                heap.removeFirst()
            case "D 1":
                if heap.isEmpty { continue }
                heap.removeLast()
            default:
                let temp = operation.components(separatedBy: " ")
                heap.append(Int(temp[1])!)
                heap.sort(by: <)
            }
        }
        var result = [0, 0]
        if heap.count > 1 {
            let lastIndex = heap.count - 1
            result = [max(heap[lastIndex], heap[lastIndex - 1]), min(heap[0], heap[1])]
        }
        return result
    }
}
