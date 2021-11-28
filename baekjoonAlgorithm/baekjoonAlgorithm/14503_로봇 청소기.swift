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
    let widthLength = readLine()!.components(separatedBy: " ").map{Int($0)!}
    let rcd = readLine()!.components(separatedBy: " ").map{Int($0)!}
    var nowPosition = (rcd[0], rcd[1])
    var nowDirection = rcd[2]
    let width = widthLength[0]
    let length = widthLength[1]
    var room : [[Int]] = []
    var cleanedRoom = 0
    var isAble = true
    for _ in 0..<length {
        room.append(readLine()!.components(separatedBy: " ").map{Int($0)!})
    }
    func run() {
        var r = nowPosition.0
        var c = nowPosition.1
        if room[r][c] == 0 {
            room[r][c] = 1
            cleanedRoom += 1
        }
        var count = 0
        while checkLeft(r, c, nowDirection) == "unAble" {
            turnLeft()
            count+=1
            if count == 4 {
                break
            }
        }
        if count == 4 {
            if checkBack() == 1 {
                print(cleanedRoom)
            }else {
                moveBack()
                run()
            }
        }else {
            moveNext()
            run()
        }
    }
    func checkPosition(_ r: Int,_ c : Int) -> Int {
        return room[r][c]
    }
    func moveNext() {
        switch nowDirection {
        case 0:
            turnLeft()
            nowPosition = (nowPosition.0,nowPosition.1-1)
        case 1:
            turnLeft()
            nowPosition = (nowPosition.0-1,nowPosition.1)
        case 2:
            turnLeft()
            nowPosition = (nowPosition.0,nowPosition.1+1)
        case 3:
            turnLeft()
            nowPosition = (nowPosition.0+1,nowPosition.1)
        default:
            return
        }
    }
    func checkBack() -> Int {
        switch nowDirection {
        case 0:
            return checkPosition(nowPosition.0+1,nowPosition.1)
        case 1:
            return checkPosition(nowPosition.0,nowPosition.1-1)
        case 2:
            return checkPosition(nowPosition.0-1,nowPosition.1)
        case 3:
            return checkPosition(nowPosition.0,nowPosition.1+1)
        default:
            return -1
        }
    }
    func moveBack() {
        switch nowDirection {
        case 0:
            nowPosition = (nowPosition.0+1,nowPosition.1)
        case 1:
            nowPosition = (nowPosition.0,nowPosition.1-1)
        case 2:
            nowPosition = (nowPosition.0-1,nowPosition.1)
        case 3:
            nowPosition = (nowPosition.0,nowPosition.1+1)
        default:
            return
        }
    }
    func checkLeft(_ r: Int, _ c : Int, _ d : Int) -> String{
        let tempPosition = (r,c)
        switch d {
        case 0:
            if checkPosition(tempPosition.0,tempPosition.1-1) == 0 {
                return "moveAble"
            }else if checkPosition(tempPosition.0, tempPosition.1-1) == 1 {
                return "unAble"
            }
        case 1:
            if checkPosition(tempPosition.0-1,tempPosition.1) == 0 {
                return "moveAble"
            }else if checkPosition(tempPosition.0-1, tempPosition.1) == 1 {
                return "unAble"
            }
        case 2:
            if checkPosition(tempPosition.0,tempPosition.1+1) == 0 {
                return "moveAble"
            }else if checkPosition(tempPosition.0, tempPosition.1+1) == 1 {
                return "unAble"
            }
        case 3:
            if checkPosition(tempPosition.0+1,tempPosition.1) == 0 {
                return "moveAble"
            }else if checkPosition(tempPosition.0+1, tempPosition.1) == 1 {
                return "unAble"
            }
        default:
            return "invalid"
        }
        return ""
    }
    func turnLeft() {
        if nowDirection==0 {
            nowDirection+=1
        }else {
            nowDirection-=1
        }
    }
    
}
