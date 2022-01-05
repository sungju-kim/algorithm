//
//  1076_저항.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2022/01/05.
//

import Foundation

func p1076() {
    var resistance = ""
    for _ in 0...2{
        var inputColor = readLine()!
        switch inputColor {
        case "black" :
            inputColor = "0"
        case "brown" :
            inputColor = "1"
        case "red" :
            inputColor = "2"
        case "orange" :
            inputColor = "3"
        case "yellow" :
            inputColor = "4"
        case "green" :
            inputColor = "5"
        case "blue" :
            inputColor = "6"
        case "violet" :
            inputColor = "7"
        case "grey" :
            inputColor = "8"
        case "white" :
            inputColor = "9"
        default:
            break
        }
        resistance += inputColor
    }
    let thirdColor = String(resistance.popLast()!)
    resistance += String(repeating: "0", count: Int(thirdColor)!)
    print(Int(resistance)!)
}
