//
//  큰수만들기.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/08/02.
//

import Foundation

struct 큰수만들기 {
    static func solution(_ number:String, _ k:Int) -> String {
        let numbers = number.map{ String($0) }
        var count = 0

        var stack: [String] = []

        var index = 0
        while count != k && index < numbers.count {
            if stack.isEmpty {
                stack.append(numbers[index])
                index += 1
                continue
            }

            if stack.last! < numbers[index] {
                stack.removeLast()
                count += 1
                continue
            }

            stack.append(numbers[index])
            index += 1
        }

        if stack.count != numbers.count - k {
            stack.append(contentsOf: numbers[index...])
        }


        return stack[0...numbers.count - k - 1].joined(separator: "")
    }
}
