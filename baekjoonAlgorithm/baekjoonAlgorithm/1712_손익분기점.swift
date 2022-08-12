//
//  1712_손익분기점.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/08/12.
//

import Foundation

func p1712() {
    let n = readLine()!.split{$0==" "}.map{Int($0)!}
    print(n[1]>=n[2] ? -1:n[0]/(n[2]-n[1])+1)
}
