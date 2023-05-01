//
//  Roman to Integer.swift
//  leetcodeAlgorithm
//
//  Created by 성주 on 2021/11/26.
//

import Foundation
/* Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 */

class SolutionRomanToInt {
    func romanToInt(_ s: String) -> Int {
        let romanArr = Array(s)
        var numArr : [Int] = []
        var result : Int = 0
        for i in romanArr {
            switch i{
            case "I":
                numArr.append(1)
            case "V":
                numArr.append(5)
            case "X":
                numArr.append(10)
            case "L":
                numArr.append(50)
            case "C":
                numArr.append(100)
            case "D":
                numArr.append(500)
            case "M":
                numArr.append(1000)
            default:
                return 0
            }
        }
        for i in 0..<numArr.count-1 {
            if numArr[i] < numArr[i+1] {
                numArr[i+1] -= numArr[i]
                numArr[i] = 0
            }
        }
        for i in numArr {
            result += i
        }
        return result
    }
}

let solutionRomanToInt = SolutionRomanToInt()
