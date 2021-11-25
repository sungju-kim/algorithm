//
//  1008_A\B.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p1008(){
    let arr = readLine()!.components(separatedBy: " ").map{Double($0)!}
    print(arr[0]/arr[1])
}
