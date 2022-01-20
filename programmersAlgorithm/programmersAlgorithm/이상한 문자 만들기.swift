//
//  이상한 문자 만들기.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/01/19.
//

func oddSolution(_ s:String) -> String {
    let letterArr = s.components(separatedBy: " ").map{$0.enumerated().map{$0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased()}}
    return letterArr.map{$0.joined()}.joined(separator: " ")
}
