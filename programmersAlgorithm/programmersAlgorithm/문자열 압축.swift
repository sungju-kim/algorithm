//
//  문자열 압축.swift
//  programmersAlgorithm
//
//  Created by 성주 on 2021/11/14.
//

import Foundation

func compressionSolution(_ s:String) -> Int {
    var string = s
    let newString = sliceString(string)
    let compress = newString.count
    let compressedString = String(compress) + newString
    
    return compressedString.count
}

func sliceString(_ s: String) -> String {
    let string = s
    var prefixed = string
    for i in 0..<string.count {
        let prefixedString = String(string.prefix(string.count-i))
        let nextPreFixedString = string.suffix(i)
        print(prefixedString, terminator: " ")
        print(nextPreFixedString.prefix(prefixedString.count))
        if prefixedString == nextPreFixedString {
            prefixed = prefixedString
            break
        }
    }
    return prefixed
}


