//
//  k진수에서소수개수구하기.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/09/01.
//

import Foundation

struct k진수에서소수개수구하기 {
    static func solution(_ n:Int, _ k:Int) -> Int {
        let radix = String(n, radix: k)

        var couldBePrime: [String] = []
        var tempString = ""
        radix.forEach {
            if $0 == "0" {
                couldBePrime.append(tempString)
                tempString = ""
            } else {
                tempString += String($0)
            }
        }
        couldBePrime.append(tempString)

        let isPrime: (Int) -> Bool = { number in
            if number == 2 || number == 3 { return true }
            for i in 2...Int(sqrt(Double(number))){
                if number % i == 0 {
                    return false
                }
            }
            return true
        }
        return couldBePrime
            .filter { $0 != "" && Int($0)! != 1 && isPrime(Int($0)!) }
            .count
    }
}
