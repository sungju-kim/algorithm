//
//  3052_나머지.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/11.
//

import Foundation

func p3052() {
    var arr : [Int] = []
    for _ in 1...10 {
        let input = Int(readLine() ?? "0") ?? 0
        if arr.contains(input % 42){
            continue
        }else {
            arr.append(input % 42)
        }
    }
    
    print(arr.count)
}
