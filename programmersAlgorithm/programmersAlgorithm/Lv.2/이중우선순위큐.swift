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

        func sort(_ array: inout [Int]) {
            var index = array.count - 1

            while index >= 0 && (array[index] < array[index/2]) {
                array.swapAt(index, index/2)
                index /= 2
            }
        }

        for operation in operations {
            print(operation)
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
                sort(&heap)
            }
            print(heap)
        }
        var result = [0, 0]
        if heap.count > 1 {
            let lastIndex = heap.count - 1
            result = [max(heap[lastIndex], heap[lastIndex - 1]), min(heap[0], heap[1])]
        }
        print(heap)
        return result
    }
}
