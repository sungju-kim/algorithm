//
//  프린터 큐_1966.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/16.
//

import Foundation

func p1966() {
    var indexArr : [Int] = []
    var count = 1
    let inputT = Int(readLine() ?? "0") ?? 0
    for _ in 1...inputT{
        let inputNum = readLine()?.components(separatedBy: " ").map{Int($0) ?? 0}
        guard let arrLength = inputNum?[0] else {return}
        guard let indexNum = inputNum?[1] else {return}
        for i in 0...arrLength-1{
            indexArr.append(Int(i))
        }
        let inputArr = readLine()?.components(separatedBy: " ").map{Int($0) ?? 0}
        guard var inputArr = inputArr else {return}
        while inputArr.count > 0 {
            if inputArr.first == inputArr.max() {
                if indexArr.first == indexNum{
                    break
                }else {
                    inputArr.removeFirst()
                    indexArr.removeFirst()
                    count += 1
                }

            }else{
                inputArr.append(inputArr.removeFirst())
                indexArr.append(indexArr.removeFirst())
            }
        }
        print(count)
        indexArr = []
        count = 1
    }
}

