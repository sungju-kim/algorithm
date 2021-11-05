//
//  p2438.swift
//  cocoaAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p2438() {
    let num = readLine().map{Int($0)} ?? 0
    for i in 1...num! {
        let star = String(repeating: "*", count: i)
        print(star)
    }
    print("")
}
 
