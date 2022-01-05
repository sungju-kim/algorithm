//
//  1009_분산처리.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2022/01/05.
//

import Foundation
func p1009(){
    guard let caseNum = Int(readLine()!) else {return}
    for _ in 0..<caseNum {
        let aAndB = readLine()!.components(separatedBy: " ").map{Int($0)!}
        let a = aAndB[0] % 10
        var b = aAndB[1]
        switch a {
        case 0:
            print(10)
        case 1,5,6:
            print(a)
        case 4,9:
            b%2 == 1 ? print(a) : print((a*a)%10)
        default:
            b%=4
            b==0 ? print(Int(pow(Double(a), Double(4))) % 10) : print(Int(pow(Double(a), Double(b))) % 10)
        }
    }
}
