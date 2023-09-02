//
//  10828_스택.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2023/09/02.
//

import Foundation

struct 스택 {
    func solution(cases: Int) {
        var stack = Stack()
        for _ in 0..<cases {
            let temp = readLine()!.components(separatedBy: " ")
            let command = temp[0]

            switch command {
            case "push":
                stack.push(num: Int(temp[1])!)
            case "pop":
                print(stack.pop())
            case "size":
                print(stack.size())
            case "empty":
                print(stack.empty())
            case "top":
                print(stack.top())
            default: continue
            }
        }
    }
}
