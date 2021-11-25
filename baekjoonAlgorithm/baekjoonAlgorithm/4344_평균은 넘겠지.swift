//
//  4344_평균은 넘겠지.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/11.
//

import Foundation

func p4344(){
    let inputC = Int(readLine() ?? "0") ?? 0
    var arr : [Int] = []
    var average : Int = 0
    var count  = 0
    for _ in 1...inputC{
        let inputN = readLine()!.components(separatedBy: " ").map{Int($0)!}
        for i in 1...inputN[0]{
            arr.append(inputN[i])
            average += inputN[i]
        }
        average = average/inputN[0]
        for score in arr {
            if score > average {
                count += 1
            }
        }
        var result = Float(count)/Float(inputN[0])*100
        result = round(result*1000)/1000
        let resultForPrint = String(format: "%.3f", result)
        
        print("\(resultForPrint)%")
        arr = []
        average = 0
        count = 0
    }
}
