//
//  K번째수.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/01/19.
//

import Foundation

func kNumSolution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result : [Int] = []
    commands.forEach{result.append(array[($0[0]-1)...($0[1]-1)].sorted()[$0[2]-1])}
    return result
}
