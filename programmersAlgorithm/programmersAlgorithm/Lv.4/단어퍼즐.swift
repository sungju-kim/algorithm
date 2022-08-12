//
//  단어퍼즐.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/08/03.
//

import Foundation

struct 단어퍼즐 {
    static func solution(_ strs: [String], _ t: String) -> Int{
        var answer:Int = 0
        let strs = Set(strs)
        let count = strs.count
        let dp = Array(repeating: Int.max, count: count)

        for character in t {

        }

        return answer
    }
}
func foo(_ commands: [String]) -> [Int] {
    var current: [Int] = [0, 0]
    var torch: [[Bool]] = [[true]]
    var ladder: [Int] = []

    let move: (String) -> Void = { command in
        switch command {
            case "UP":
                torch.append([true])
                ladder.append(current[0])
                current[1] += 1
            case "FORWARD":
                torch[current[1]].append(true)
                current[0] += 1
            case "DOWN":
                if current[1] == 0 { break }
                current[1] -= 1
                current[0] = ladder.removeLast()
                torch.removeLast()
            case "BACK":
                if current[0] == 0 { break }
                if torch.count > 0 {
                    torch.removeLast()
                    current[0] -= 1
                }
            default:
                break
        }
    }
    for command in commands {
        move(command)
    }

    print(current)
    print(torch)
    return current
}
