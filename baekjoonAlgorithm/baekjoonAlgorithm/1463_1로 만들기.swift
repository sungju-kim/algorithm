//
//  1463_1로 만들기.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/12/20.
//
import Foundation
func p1463() {
    var x = Int(readLine()!)!
    var count = 0
    while x != 1 {
        if ((x%3) == 0) || (((x-1)%3) == 0) {
            if (x%3) == 0 {
                x /= 3
                count += 1
            }else if ((x-1)%3) == 0 {
                x -= 1
                count += 1
                x /= 3
                count += 1
            }
        }
        else if ((x%2) == 0) || (((x-1)%2) == 0) {
            if (x%2) == 0 {
                x /= 2
                count += 1
            }else if ((x-1)%2) == 0 {
                x -= 1
                count += 1
                x /= 2
                count += 1
            }
        }else {
            x -= 1
            count += 1
        }
    }
    print(count)
}
