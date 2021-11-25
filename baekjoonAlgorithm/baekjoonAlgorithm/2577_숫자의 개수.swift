//
//  2577_숫자의 개수.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/26.
//

import Foundation
func p2577(){
    var number = 1
    for _ in 1...3 {
        number *= Int(readLine() ?? "0") ?? 0
    }
    var array = Array<Int>(repeating: 0, count: 10)
    
    while number != 0 {
        let index=number % 10
        number = number / 10
        array[index] += 1
    }
    array.forEach{print($0)}
}
