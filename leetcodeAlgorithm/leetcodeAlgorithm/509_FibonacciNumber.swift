//
//  509_FibonacciNumber.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2022/01/08.
//



class SolutionFibonacci {
    func fib(_ n: Int) -> Int {
        var fibData : [Int] = [0,1]
        if n <= 1 {
            return fibData[n]
        }
        for i in 2...n {
            fibData.append(fibData[i-1] + fibData[i-2])
        }
        return fibData[n]
    }
}

let solutionFibonacci = SolutionFibonacci()
