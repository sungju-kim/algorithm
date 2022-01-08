//
//  1137_tribonacci.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2022/01/08.
//

class SolutionTribonacci {
    func tribonacci(_ n: Int) -> Int {
        var triboDate = [0,1,1]
        if n<=2 {
            return triboDate[n]
        }
        for i in 3...n{
            triboDate.append(triboDate[i-1]+triboDate[i-2]+triboDate[i-3])
        }
        return triboDate[n]
    }
}

let solutionTribonacci = SolutionTribonacci()
