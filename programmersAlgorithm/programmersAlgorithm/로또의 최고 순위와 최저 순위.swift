//
//  로또의 최고 순위와 최저 순위.swift
//  programmersAlgorithm
//
//  Created by 성주 on 2021/11/14.
//

import Foundation

func lottosSolution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let maxNum = lottos.filter{win_nums.contains($0)}.count + lottos.filter{Int($0) == 0}.count
    let minNum = lottos.filter{win_nums.contains($0)}.count
    
    return [returnMaxMin(maxNum), returnMaxMin(minNum)]
}

func returnMaxMin(_ num : Int) -> Int {
    switch num {
    case 6:
        return 1
    case 5:
        return 2
    case 4:
        return 3
    case 3:
        return 4
    case 2:
        return 5
    default:
        return 6
    }
}
