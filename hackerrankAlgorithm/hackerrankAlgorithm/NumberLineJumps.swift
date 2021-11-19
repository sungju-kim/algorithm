//
//  NumberLineJumps.swift
//  hackerrankAlgorithm
//
//  Created by 성주 on 2021/11/19.
//

import Foundation
struct Kangaroo {
    func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        if v1 <= v2{
            return "NO"
        }else {
            var firstKangaroo = x1
            var secondKangaroo = x2
            var result = "NO"
            while firstKangaroo < secondKangaroo {
                firstKangaroo += v1
                secondKangaroo += v2
                if firstKangaroo == secondKangaroo {
                    result = "YES"
                    break
                }
            }
            return result
        }
    }
    func printResult() {
        print(kangaroo(x1: 0, v1: 3, x2: 4, v2: 2))
    }
}

let kangaroo = Kangaroo()
