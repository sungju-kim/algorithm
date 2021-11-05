//
//  X보다 작은 수_10871.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p10871(){
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    
    let inputArr = readLine()!.components(separatedBy: " ").map{Int($0)!}.filter{ $0 < input[1]}.map{String($0)}

    print(inputArr.joined(separator: " "))
}
