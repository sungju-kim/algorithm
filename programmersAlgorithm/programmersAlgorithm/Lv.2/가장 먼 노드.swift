//
//  가장 먼 노드.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/20.
//

import Foundation

struct 가장먼노드 {
    static func solution(_ n:Int, _ edge:[[Int]]) -> Int {
        var graph: [Int: [Int]] = [:]
        var result: [Int] = Array(repeating: 0, count: n+1)
        var visited: [Bool] = Array(repeating: false, count: n+1)

        edge.forEach {
            var temp = graph[$0[0]] ?? []
            var temp2 = graph[$0[1]] ?? []
            temp.append($0[1])
            temp2.append($0[0])
            graph[$0[0]] = temp
            graph[$0[1]] = temp2
        }

        var maxValue = 0
        var counter: [Int: Int] = [:]

        var needToVisit: [Int] = [1]
        var index = 0

        while needToVisit.count > index {
            let current = needToVisit[index]
            index += 1
            maxValue = max(maxValue, result[current])
            visited[current] = true
            for next in graph[current]! {
                if visited[next] || result[next] != 0 { continue }

                needToVisit.append(next)
                result[next] = result[current] + 1

                var temp = counter[result[next]] ?? 0
                temp += 1
                counter[result[next]] = temp
            }
        }
        return counter[maxValue]!
    }
}
