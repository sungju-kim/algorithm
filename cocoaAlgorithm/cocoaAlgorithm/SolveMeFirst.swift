//
//  SolveMeFirst.swift
//  cocoaAlgorithm
//
//  Created by 성주 on 2021/11/19.
//

import Foundation

struct SolveMeFirst {
    func solveMeFirst() -> Int{
        let a = Int(readLine()!)!
        let b = Int(readLine()!)!
        return a+b
    }
    func printResult() {
        print(solveMeFirst())
    }
}
let solveMeFirst = SolveMeFirst()


