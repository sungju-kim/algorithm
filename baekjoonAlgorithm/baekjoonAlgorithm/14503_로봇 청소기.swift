//
//  14503_로봇 청소기.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/28.
//

import Foundation



// rcd
// (r,c) d = 방향 ,  북쪽 0 , 동쪽 1, 남쪽 2, 서쪽 3

func p14503() {
    let lengthWidth = readLine()!.components(separatedBy: " ").map{Int($0)!}
    let length = lengthWidth[0]
    let rcd = readLine()!.components(separatedBy: " ").map{Int($0)!}
    typealias Point = (r:Int, c:Int)
    var currentPosition = Point(rcd[0],rcd[1])
    var currentDirection = Direction(rawValue: rcd[2])!
    var room : [[Int]] = []
    for _ in 0..<length {
        room.append(readLine()!.components(separatedBy: " ").map{Int($0)!})
    }
    enum Direction : Int {
        case up = 0, right, down, left
        mutating func turnLeft() {
            switch self {
            case .up : self = .left
            case .left : self = .down
            case .down : self = .right
            case .right : self = .up
            }
        }
    }
    var front : Point {
        switch currentDirection {
        case .up:return(currentPosition.r-1,currentPosition.c)
        case .right:return(currentPosition.r,currentPosition.c+1)
        case .down:return(currentPosition.r+1,currentPosition.c)
        case .left:return(currentPosition.r,currentPosition.c-1)
        }
    }
    var back : Point {
        switch currentDirection {
        case .up:return(currentPosition.r+1,currentPosition.c)
        case .right:return(currentPosition.r,currentPosition.c-1)
        case .down:return(currentPosition.r-1,currentPosition.c)
        case .left:return(currentPosition.r,currentPosition.c+1)
        }
    }
    
    func isCleanAble() -> Bool {
        for _ in 0..<4 {
            currentDirection.turnLeft()
            if room[front.r][front.c] == 0 {
                currentPosition = front
                return true
            }
        }
        return false
    }
    var cleanCount = 0
    func cleaner() {
        while room[currentPosition.r][currentPosition.c] != 1 {
            if room[currentPosition.r][currentPosition.c] == 0 {
                room[currentPosition.r][currentPosition.c] = 2
                cleanCount += 1
            }
            if !isCleanAble() {
                currentPosition = back
            }
        }
    }
    cleaner()
    print(cleanCount)
    
}
