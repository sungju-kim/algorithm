//
//  8958_OX퀴즈.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p8958(){
    let line = Int(readLine()!)!
    for _ in 0..<line {
        var score = 0
        var sumScore = 0
        let arr = readLine()!
        for i in arr {
            if i == "O" {
                sumScore += score + 1
                score += 1
            }else{
                score = 0
            }
        }
        print(sumScore)
        
    }

}
 
