//
//  Reverse Integer.swift
//  leetcodeAlgorithm
//
//  Created by 성주 on 2021/11/26.
//

import Foundation
class SolutionReverseInteger {
    func reverse(_ x: Int) -> Int {
        let numToStrArr = Array(String(x))
        var newNum = ""
        if numToStrArr[0] == "-" {
            newNum = "-"
            for i in stride(from: numToStrArr.count-1, through: 1, by: -1) {
                newNum += String(numToStrArr[i])
            }
        }else {
            for i in stride(from: numToStrArr.count-1, through: 0, by: -1) {
                newNum += String(numToStrArr[i])
            }
        }
        guard let result = Int(newNum) else {return 0}
        let maxNum = Int(pow(2.0, 31))
        guard let minNum = Int("-" + String(maxNum)) else {return 0}
        if result > (maxNum-1) || result < minNum {
            return 0
        }else {
            return result
        }
    }
}

let solutionReverseInteger = SolutionReverseInteger()
