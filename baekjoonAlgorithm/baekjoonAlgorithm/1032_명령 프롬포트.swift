//
//  1032_명령 프롬포트.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/25.
//

import Foundation

func p1032() {
    let caseNum = Int(readLine()!)!
    
    var inputWord = Array(readLine()!).map{String($0)}
    for _ in 0..<caseNum-1 {
        let nextWord = Array(readLine()!).map{String($0)}
        for i in 0..<inputWord.count{
            if nextWord[i] == inputWord[i] {
                continue
            }else{
                inputWord[i] = "?"
            }
        }
    }
    print(inputWord.joined())
    
}
