//
//  DiagonalDifference.swift
//  hackerrankAlgorithm
//
//  Created by dale on 2022/01/26.
//

import Foundation
struct DiagonalDifference {
    func diagonalDifference(arr: [[Int]]) -> Int {
        let length = arr.count-1
        var leftHand = 0
        var rightHand = 0
        for i in 0...length {
                leftHand += arr[i][i]
                rightHand += arr[i][length-i]
        }
        let result = (leftHand - rightHand).magnitude
        return Int(result)
    }
    
    func printResult(arr: [[Int]]) {
        print(diagonalDifference(arr: arr))
    }
}

let diagonalDifference = DiagonalDifference()
