//
//  베스트앨범.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/13.
//

import Foundation

struct 베스트앨범 {
    static func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
        var dic: [String:(Int, [(Int,Int)])] = [:]

        genres.enumerated().forEach {
            var item = dic[$1] ?? (0, [])
            item.0 += plays[$0]
            item.1.append(($0,plays[$0]))
            dic[$1] = item
        }

        var answer: [Int] = []

        dic.values.sorted { $0.0 > $1.0 }.forEach {
            answer += $0.1.sorted { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 > $1.1 }
                            .enumerated()
                            .prefix(2)
                            .map { $1.0 }}
        return answer
    }
}
