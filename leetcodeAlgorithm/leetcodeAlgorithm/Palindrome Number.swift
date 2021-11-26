//
//  Palindrome Number.swift
//  leetcodeAlgorithm
//
//  Created by 성주 on 2021/11/26.
//

import Foundation

class SolutionIsPalindrome {
    func isPalindrome(_ x: Int) -> Bool {
        if x >= 0 {
            switch x == solutionReverseInteger.reverse(x) {
            case true :
                return true
            case false :
                return false
            }
        }else {
            return false
        }
    }
}

let solutionIsPalindrome = SolutionIsPalindrome()
