//
//  AVeryBigSum.swift
//  cocoaAlgorithm
//
//  Created by 성주 on 2021/11/19.
//

import Foundation

struct AVeryBigSum {
    let ar = readLine()!.components(separatedBy: " ").map{Int($0)!}
    func aVeryBigSum(ar: [Int]) -> Int {
        let length = ar.count-1
        var result = 0
        for i in 0...length{
            result += ar[i]
        }
        return result
    }
    func printResult(){
        print(aVeryBigSum(ar: ar))
    }
}

let aVeryBigSum = AVeryBigSum()
