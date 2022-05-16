//
//  2085_Count Common Words With One Occurrence.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2022/04/04.
//

import Foundation
class CommonWordsSolution {
    func countWords(_ words1: [String], _ words2: [String]) -> Int {
        var temp : Set<String> = []
        words1.forEach{
            if words2.contains($0){
                temp.update(with: $0)
            }
        }
        words2.forEach{
            if words1.contains($0){
                temp.update(with: $0)
            }
        }
        var count = 0
        for i in temp {
            if words1.filter({$0 == i}).count == 1 && words2.filter({$0 == i}).count == 1 {
                count += 1
            }
        }
        return count
    }
}
let commonWords = CommonWordsSolution()
