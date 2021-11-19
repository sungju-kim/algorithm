//
//  TimeConversion.swift
//  hackerrankAlgorithm
//
//  Created by 성주 on 2021/11/19.
//

import Foundation
struct TimeConversion {
    let s = "12:05:45PM"
    func timeConversion(s: String) -> String {
        let antePostMeridiem = s.suffix(2)
        var onlyTime = s.prefix(8).components(separatedBy: ":").map{$0}
        var hour = onlyTime[0]
        let newHour = String(Int(hour)! + 12)
        switch antePostMeridiem {
        case "PM":
            switch hour {
            case "12":
                hour = "12"
            default:
                hour = newHour
            }
        case "AM":
            if hour == "12"{
                hour = "00"
            }
        default:
            return "fail"
        }
        onlyTime[0] = String(hour)
        
        return "\(onlyTime[0]):\(onlyTime[1]):\(onlyTime[2])"
    }
    
    func printResult(){
        print(timeConversion(s: s))
    }
}

let timeConversion = TimeConversion()
