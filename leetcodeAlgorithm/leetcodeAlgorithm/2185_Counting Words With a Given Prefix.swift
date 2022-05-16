//
//  2185_Counting Words With a Given Prefix.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2022/04/06.
//

import Foundation

func p2185(_ words: [String], _ pref: String) -> Int {
    var result : Int = 0
    let num = Array(pref).count
    words.forEach{
        let temp = Array($0).map{String($0)}.prefix(num)
        if temp.joined() == pref {
            result += 1
        }
    }
    return result
}
