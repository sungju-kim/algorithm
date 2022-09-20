//
//  WoodenStick.swift
//  CodilityAlgorithm
//
//  Created by dale on 2022/09/05.
//

import Foundation

struct WoodenStick {
    static func solution(_ A : Int, _ B : Int) -> Int {
        let sum = A + B
        if sum < 4 { return 0 }
        var temp = sum / 4
        while true {
            if (A/temp + B/temp) == 4 { return temp }
            temp -= 1
        }
    }
}
