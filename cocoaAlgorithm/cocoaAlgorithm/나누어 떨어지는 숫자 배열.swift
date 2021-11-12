//
//  나누어 떨어지는 숫자 배열.swift
//  cocoaAlgorithm
//
//  Created by 성주 on 2021/11/12.
//

import Foundation

func divideAvailableArray(_ arr:[Int], _ divisor:Int) -> [Int] {
    var resultArr : [Int] = []
    for i in 0...arr.count-1 {
        if arr[i] % divisor == 0 {
            resultArr.append(arr[i])
        }
    }
    if resultArr.count == 0 {
        return [-1]
    }else {
        return resultArr.sorted()
    }
}
