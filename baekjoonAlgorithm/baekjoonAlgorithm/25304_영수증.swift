//
//  25304_영수증.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/08/12.
//

import Foundation

func p25304() {
    var total = Int(readLine()!)!

    (0..<Int(readLine()!)!).forEach { _ in
        let input = readLine()!.components(separatedBy: " ").map{ Int($0)! }
        total -= input[0] * input[1]
    }
    print(total == 0 ? "Yes" : "No")
}
