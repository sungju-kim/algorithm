//
//  11720_숫자의 합.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/13.
//

import Foundation

func p11720() {
    let inputN = Int(readLine() ?? "") ?? 0
    let inputArr = Array(readLine() ?? "")
    var result = 0
    for i in 0..<inputN {
        result += Int(String(inputArr[i])) ?? 0
    }
    print(result)
}
