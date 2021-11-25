//
//  9498_시험 성적.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation
func p9498(){
    let input = Int(readLine()!)!
    if input  >= 90 {
        print("A")
    }
    else if input >= 80 {
        print("B")
    }
    else if input >= 70 {
        print("C")
    }
    else if input >= 60 {
        print("D")
    }
    else if input < 60 {
        print("F")
    }
}

