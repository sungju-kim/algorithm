//
//  두 개 뽑아서 더하기.swift
//  cocoaAlgorithm
//
//  Created by 성주 on 2021/11/12.
//

import Foundation

func popAndSum(_ numbers:[Int]) -> [Int] {
    var sumArr : Set<Int> = []
    for i in 0..<numbers.count{
        for j in i+1..<numbers.count{
            sumArr.insert(numbers[i]+numbers[j])
        }
    }
    return Array(sumArr).sorted()
}
