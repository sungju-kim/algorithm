//
//  1181_단어 정렬.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/01/21.
//

import Foundation

func p1181() {
    var wordArr : Set<String> = []
    for _ in 0..<Int(readLine()!)! {
        wordArr.insert(readLine()!)
    }
    wordArr.sorted().sorted{$0.count<$1.count}.forEach{print($0)}
}
