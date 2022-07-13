//
//  영어끝말잇기.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/13.
//

import Foundation

struct 영어끝말잇기 {
    static func solution(_ n:Int, _ words:[String]) -> [Int] {
        var wordsSet: Set<String> = [words[0]]

        for i in 1..<words.count {
            let word = words[i]
            if wordsSet.contains(word) || word.first != words[i - 1].last {
                return [i % n + 1, i / n + 1]
            }
            wordsSet.insert(word)
        }
        return [0, 0]
    }
}
