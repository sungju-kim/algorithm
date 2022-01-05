//
//  1052_물병.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2022/01/05.
//

import Foundation
func p1052() {
    let inputArr = readLine()!.components(separatedBy: " ")
    var baseNum = Int(inputArr[0])!
    let canCarryNum = Int(inputArr[1])!
    var powerNum = 0
    var remainBottle : [Int] = []
    var buyNum = 0
    while baseNum > 1 {
        if baseNum % 2 == 1 {
            remainBottle.append(Int(pow(Double(2), Double(powerNum))))
        }
        baseNum /= 2
        powerNum += 1
    }
    remainBottle.append(Int(pow(Double(2), Double(powerNum))))
    while remainBottle.count > canCarryNum {
        buyNum += remainBottle[1]-remainBottle[0]
        remainBottle.removeFirst()
        remainBottle[0] *= 2
    }
    print(buyNum)
}
