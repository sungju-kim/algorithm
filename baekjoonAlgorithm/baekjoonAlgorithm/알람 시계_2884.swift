//
//  알람 시계_2884.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/11.
//

import Foundation

func p2884() {
    guard let input = readLine()?.components(separatedBy: " ") else {return}
    guard var hour = Int(input[0]) else {return}
    guard let minute = Int(input[1]) else {return}
    if hour == 0 && minute < 45 {
        hour = 24
    }
    let hourToMinute = hour * 60
    let wholeMinute = hourToMinute + minute
    let earlyTime = wholeMinute - 45
    let earlyHour = earlyTime/60
    let earlyMinute = earlyTime%60
    print(earlyHour, earlyMinute)
}
