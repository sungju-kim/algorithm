//
//  양과 늑대.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/09/19.
//

import Foundation

struct 양과늑대 {
    static func solution(_ info:[Int], _ edges:[[Int]]) -> Int {
        var graph: [Int: [Int?]] = [:]
        let action: (inout Int) -> Void = { $0 += 1 }
        var answer = 0

        edges.forEach { graph[$0[0], default: []].append($0[1]) }

        func dfs(_ childs: [Int?],_ sheep: Int,_ wolf: Int) {
            for (index, childIndex) in childs.enumerated() {
                guard let childIndex = childIndex else { continue }
                var nextSheep = sheep
                var nextWolf = wolf

                info[childIndex] == 0 ? action(&nextSheep) : action(&nextWolf)

                if nextSheep == nextWolf { continue }

                answer = max(answer, nextSheep)

                var childs = childs
                childs[index] = nil
                childs += graph[childIndex] ?? []

                dfs(childs, nextSheep, nextWolf)
            }
        }

        dfs([0], 0, 0)

        return answer
    }
}
