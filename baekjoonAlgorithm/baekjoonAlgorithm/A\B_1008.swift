//
//  A\B_1008.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p1008(){
    let arr = readLine()!.components(separatedBy: " ").map{Double($0)!}
    print(arr[0]/arr[1])
}
