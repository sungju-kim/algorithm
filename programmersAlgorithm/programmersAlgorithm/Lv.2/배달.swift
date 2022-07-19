//
//  배달.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/19.
//

import Foundation

struct 배달 {
    static func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
        let max = 500000

        var graph: [[Int]] = Array(repeating: Array(repeating: max, count: N+1), count: N+1)

        (0..<N).forEach { graph[$0][$0] = 0 }

        road.forEach {
            graph[$0[0]][$0[1]] = min(graph[$0[0]][$0[1]], $0[2])
            graph[$0[1]][$0[0]] = min(graph[$0[1]][$0[0]], $0[2])
        }
        var result = Array(repeating: max, count: N+1)
        result[1] = 0

        var queue = [1]
        var index = 0

        while queue.count > index {
            let node = queue[index]
            index += 1
            let distance = result[node]
            for next in 1...N {
                if distance + graph[node][next] >= Int.max { continue }
                if distance + graph[node][next] >= result[next] { continue }
                result[next] = distance + graph[node][next]
                queue.append(next)
            }
        }
        return result.filter { $0 <= k }.count
    }
}
