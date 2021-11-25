//
//  1330_두 수 비교하기.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p1330(){
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    if input[0] > input[1] {
        print(">")
    }else if input[0] < input[1] {
        print("<")
    }else {
        print("==")
    }
        
}
