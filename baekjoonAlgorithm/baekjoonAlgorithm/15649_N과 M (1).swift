//
//  15649_N과 M (1).swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/09/22.
//

import Foundation

struct N과M_1 {
    func solution(n: Int, m: Int) -> [String]{
        var answer: [String] = []
        var visited = Array(repeating: false, count: n + 1)

        func dfs(_ length: Int,_ stack: [String]) {
            if length == m {
                answer.append(stack.joined(separator: " "))
                return
            }

            for i in 1...n {
                if visited[i] { continue }
                visited[i] = true
                dfs(length + 1, stack + [String(i)])
                visited[i] = false
            }
        }

        dfs(0, [])

        return answer
    }
}
