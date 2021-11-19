//
//  ClimbingTheLeaderboard.swift
//  hackerrankAlgorithm
//
//  Created by 성주 on 2021/11/19.
//

import Foundation

struct ClimbingLeaderboard {
    func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
        let scores : [Int] = ranked
        var rank : [Int] = []
        var result :[Int] = []
        for score in scores {
            if rank.isEmpty {
                rank.append(score)
            }else if rank[rank.endIndex-1] > score {
                rank.append(score)
            }
        }
        for play in player {
            while !rank.isEmpty && rank[rank.count - 1] <= play {
                rank.removeLast()
            }
            result.append(rank.count+1)
        }
        return result
    }

    
    func printResult(){
        print(climbingLeaderboard(ranked: [100,100,50,40,40,20,10], player: [5,25,50,120]))
    }
}

let climbingLeaderboard = ClimbingLeaderboard()
