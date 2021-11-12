//
//  나누어 떨어지는 숫자 배열.swift
//  cocoaAlgorithm
//
//  Created by 성주 on 2021/11/12.
//

import Foundation

func divideAvailableArray(_ arr:[Int], _ divisor:Int) -> [Int] {
    let array = arr.sorted().filter{$0 % divisor == 0}
    return array == [] ? [-1] : array
}
