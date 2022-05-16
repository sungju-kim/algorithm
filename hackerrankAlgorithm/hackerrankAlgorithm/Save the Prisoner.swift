//
//  Save the Prisoner.swift
//  hackerrankAlgorithm
//
//  Created by dale on 2022/01/26.
//

import Foundation

struct SaveThePrisoner {
    func saveThePrisone(n: Int, m: Int, s: Int) -> Int {
        return (m+(s-1)) % n >= 1 ? (m+(s-1)) % n : (m+(s-1)) % n + n
    }
    func printResult() {
        print(saveThePrisone(n: 3, m:394274638, s: 3))
    }
}
let saveThePrisoner = SaveThePrisoner()
