//
//  2215. Find the Difference of Two Arrays.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2023/05/03.
//

import Foundation

struct FindTheDifferenceOfTwoArrays: Problem {
    typealias Input = ([Int], [Int])
    typealias Output = [[Int]]

    func solution(_ input: ([Int], [Int])) -> [[Int]] {
        let num1 = Set(input.0)
        let num2 = Set(input.1)
        return [Array(num1.subtracting(num2)), Array(num2.subtracting(num1))]
    }

}
