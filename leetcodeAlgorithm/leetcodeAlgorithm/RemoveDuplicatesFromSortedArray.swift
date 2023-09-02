//
//  RemoveDuplicatesFromSortedArray.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2023/09/02.
//

import Foundation

struct RemoveDuplicatesFromSortedArray: Problem {
    typealias Input = [Int]
    typealias Output = Int

    func solution(_ input: [Int]) -> Int {
        let set = Set(input)
        return set.count
    }

    func solution(_ input: inout [Int]) -> Int {
        let set = Set(input)
        input = Array(set).sorted()
        return set.count
    }
}
