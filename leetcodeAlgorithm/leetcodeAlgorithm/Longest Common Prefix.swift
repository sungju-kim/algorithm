//
//  Longest Common Prefix.swift
//  leetcodeAlgorithm
//
//  Created by 성주 on 2021/11/26.
//

import Foundation

class SolutionLongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let length = strs.count
        if length == 1{
            return strs[0]
        }
        guard let min = strs.map({$0.count}).min() else {return ""}
        var targetWord = Array(strs[0]).map{String($0)}[0..<min]
        var result = ""
        for i in 0..<length-1 {
            let nextWord = Array(strs[i+1]).map{String($0)}[0..<min]
            for j in 0..<min {
                if targetWord[j] == nextWord[j]{
                    continue
                }else if targetWord[j] != nextWord[j] {
                    targetWord[j] = ""
                }
            }
        }
        for j in targetWord {
            if j != "" {
                result += j
            }else {
                return result
            }
        }
        return result
    }
}

let soulutionLongestCommonPrefix = SolutionLongestCommonPrefix()
