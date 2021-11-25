//
//  10797_10부제.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/25.
//

import Foundation

func p10797() {
    let day = Int(readLine()!)
    let cars = readLine()?.components(separatedBy: " ").map{Int($0)!}
    guard let cars = cars else {return}
    print(cars.filter{$0 == day}.count)
}
