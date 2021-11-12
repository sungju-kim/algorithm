//
//  약수의 합.swift
//  cocoaAlgorithm
//
//  Created by 성주 on 2021/11/12.
//

import Foundation

func sumOfFacters(_ n:Int) -> Int {
    var facters : [Int] = []
    if n > 0 {
        for i in 1...n {
            if n % i == 0{
                facters.append(i)
            }
        }
        return facters.reduce(0, +)
    }else {
        return 0
    }
}
