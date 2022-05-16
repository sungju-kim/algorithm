//
//  TimeConversion.swift
//  hackerrankAlgorithm
//
//  Created by 성주 on 2021/11/19.
//

import Foundation
struct TimeConversion {
    let s = "12:40:03PM"
    func timeConversion(s: String) -> String {
        let antePostMeridiem = s.suffix(2)
        let onlyTime = s.prefix(8).components(separatedBy: ":").map{$0}
        var hour = onlyTime[0]
        switch (antePostMeridiem,hour) {
        case ("PM","12"):
            hour = "12"
        case ("PM",_):
            hour = String(Int(hour)!+12)
        case ("AM","12"):
            hour = "00"
        case ("AM",_):
            hour = "0" + String(Int(hour)!)
        default: break
        }
        return "\(hour):\(onlyTime[1]):\(onlyTime[2])"
    }
    
    func printResult(){
        print(timeConversion(s: s))
    }
}

let timeConversion = TimeConversion()
