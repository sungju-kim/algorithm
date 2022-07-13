//
//  프린터.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/12.
//

import Foundation

struct 프린터 {
    static func solution(_ priorities:[Int], _ location:Int) -> Int {
        var workQueue = Queue(
            array: priorities.enumerated().map { index, value in
            return Work(value: value, index: index)
            }
        )

        var count = 1

        while !workQueue.isEmpty {
            let max = workQueue.max
            let first = workQueue.pop()
            let index = first.index

            if first == max && index == location {
                break
            }

            if first == max {
                count += 1
                continue
            }

            workQueue.add(first)
        }
        return count
    }

    struct Work: Comparable{
        static func < (lhs: 프린터.Work, rhs: 프린터.Work) -> Bool {
            return lhs.value < rhs.value
        }

        var value: Int
        var index: Int
    }

    struct Queue<T: Comparable> {
        var array: [T] = []

        var first: T? {
            return array.first
        }

        var max: T? {
            return array.max()
        }

        var isEmpty: Bool {
            return array.isEmpty
        }

        mutating func add(_ item: T) {
            array.append(item)
        }

        mutating func pop() -> T {
            return array.removeFirst()
        }
    }
}
