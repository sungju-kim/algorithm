//
//  5086_배수와 약수.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/25.
//

import Foundation

func p5086() {
    while true{
        let input = readLine()?.components(separatedBy: " ").map{Int($0)!}
        guard let input = input else {return}
        if (input[0] == 0) && (input[1] == 0) {
            break
        }else if input[1]%input[0] == 0{
            print("factor")
        }else if input[0]%input[1] == 0 {
            print("multiple")
        }else{
            print("neither")
        }
    }
}
