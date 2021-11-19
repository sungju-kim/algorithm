//
//  좌표압축_18870.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/19.
//

import Foundation

struct P18870 {
    func p18870() {
        let _ = Int(readLine()!)
        let numArr : [Int] = readLine()!.components(separatedBy: " ").map{Int($0)!}
        var newArr = Array(Set(numArr)).sorted(by: <)
        for i in numArr {
            while !newArr.isEmpty {
                if newArr[newArr.endIndex-1] == i{
                    print(newArr.endIndex-1, terminator: " ")
                    newArr.removeLast()
                }else{
                    newArr.removeLast()
                }
            }
            newArr = Array(Set(numArr)).sorted(by: <)
        }
        print("")
    }
}

let p18870 = P18870()
