//
//  크레인 인형뽑기 게임.swift
//  programmersAlgorithm
//
//  Created by 성주 on 2021/11/12.
//

import Foundation

func dollCountSolution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var dollCount = 0
    let rowNum = board.count-1
    var basket : [Int] = [0]
    for j in moves {
        for i in 0..<rowNum{
            if board[i][j-1] != 0 {
                if basket[basket.count-1] == board[i][j-1] {
                    dollCount += 2
                    basket.remove(at: basket.count-1)
                    print("\(basket)1 in row\(i)")
                } else {
                    basket.append(board[i][j-1])
                    print("\(basket)2 in row\(i)")
                }
            }
        }
    }
    return dollCount
}
