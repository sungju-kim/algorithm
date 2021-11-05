//
//  A+B_1000.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p1000(){
    let arr = readLine()!.components(separatedBy: " ").map{Int($0)!}
    print(arr[0]+arr[1])
}
 
