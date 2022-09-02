//
//  1193_분수찾기.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/08/12.
//

import Foundation

func p1193() {
    let x = Int(readLine()!)!
    var t: [Int] = []
    var i = 0
    var c = 0

    while true {
        if i >= x { break }
        i += i+1
        c += 1
        t.append(i)
    }
    print(t)
    print(i)
    print(c)
}
