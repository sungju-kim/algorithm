//
//  주차요금계산.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/09/01.
//

import Foundation

struct 주차요금계산 {
    static func solution(_ fees:[Int], _ records:[String]) -> [Int] {
        let (baseTime, baseFee, unitTime, unitFee) = (fees[0], fees[1], fees[2], fees[3])
        var parkingLot: [String: Int] = [:]
        var parkingTime: [String: Int] = [:]

        records.forEach {
            let temp = $0.components(separatedBy: " ")
            let tempTime = temp[0].components(separatedBy: ":").map { Int($0)! }
            let time = tempTime[0] * 60 + tempTime[1]

            let carNumber = temp[1]
            let state = temp[2]
            switch state {
            case "IN":
                parkingLot[carNumber] = time
            case "OUT":
                parkingTime[carNumber, default: 0] += time - parkingLot[carNumber]!
                parkingLot[carNumber] = nil
            default:
                break
            }
        }
        parkingLot.forEach {
            parkingTime[$0.key, default: 0] += (23 * 60 + 59) - parkingLot[$0.key]!
        }

        parkingTime.forEach {
            let temp = baseFee
            let time = $0.value - baseTime
            let fee = time <= 0 ? temp : temp + Int(ceil(Double(time)/Double(unitTime))) * unitFee
            parkingTime[$0.key] = fee
        }

        let result: [Int] = parkingTime
            .sorted { Int($0.key)! < Int($1.key)! }
            .reduce(into: []) { $0.append($1.value) }

        return result
    }
}
