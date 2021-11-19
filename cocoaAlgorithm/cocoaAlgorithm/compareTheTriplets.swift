//
//  compareTheTriplets.swift
//  cocoaAlgorithm
//
//  Created by 성주 on 2021/11/19.
//

import Foundation

struct CompareTheTriplets {
    func compareTriplets(a: [Int], b: [Int]) -> [Int] {
        var result = [0 , 0]
        for i in 0...2 {
            if a[i] > b[i]{
                result[0] += 1
            }else if a[i]<b[i]{
                result[1] += 1
            }
        }
        return result
    }
    
    
    let a = readLine()!.components(separatedBy: " ").map{Int($0)!}
    let b = readLine()!.components(separatedBy: " ").map{Int($0)!}
    
    func printResult() {
        print(compareTriplets(a: a, b: b))
    }
    
}

let compareTheTriplets = CompareTheTriplets()
