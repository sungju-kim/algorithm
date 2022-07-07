//
//  11726_2*n타일링.swift
//  baekjoonAlgorithm
//
//  Created by dale on 2022/07/07.
//

import Foundation

func p11726() {
    var dp: [Int] = [0, 1, 2, 3]

    let n = Int(readLine()!)!
    if n >= 4 {
        for i in 4...n {
            dp.append((dp[i-1] + dp[i-2]) % 10007)
        }
    }
    print(dp[n])
}
