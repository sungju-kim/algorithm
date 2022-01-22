//
//  1436_영화감독 숌.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/01/22.
//

import Foundation

func p1436() {
    let start = CFAbsoluteTimeGetCurrent()
    let targetNum = Int(readLine()!)!
    var index = 0
    var result = 665
    while true {
        result += 1
        if String(result).contains("666") {
            index += 1
        }
        if targetNum == index {
            print(result)
            break
        }
    }
    let end = CFAbsoluteTimeGetCurrent()
    let timeElapsed = end - start
    print(timeElapsed)
}
