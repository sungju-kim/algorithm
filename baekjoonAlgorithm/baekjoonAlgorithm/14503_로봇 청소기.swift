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
    struct Room {
        var width : Int
        var length : Int
        var room : [[String]]
        var x : Int
        var y : Int
        var direction : Int
        var cleanedRoom = 0
        init() {
            var widthLength = readLine()!.components(separatedBy: " ").map{Int($0)!}
            var positionDirection = readLine()!.components(separatedBy: " ").map{Int($0)!}
            room = []
            width = widthLength[1]
            length = widthLength[0]
            x = positionDirection[0]
            y = positionDirection[1]
            direction = positionDirection[2]
            cleanedRoom = 0
            for _ in 0..<length {
                room.append(readLine()!.components(separatedBy: " "))
            }
            print(room)
        }
        mutating func run() {
            
        }
        mutating func cleanRoom() {
            room[x][y] = "1"
            cleanedRoom += 1
        }
        mutating func searchNext() {
            let nextDirection = nextDirection()
            while room[nextDirection.0][nextDirection.1] == "1"{
                var count = 0
                turnLeft()
                x -= 1
                count += 1
                if count == 4 {
                    break
                }
            }
        }
        mutating func moveBack() {
            switch direction {
            case 0 :
                x += 1
            case 1 :
                y += 1
            case 2 :
                x -= 1
            case 3 :
                y -= 1
            default:
                return
            }
        }
        func nextDirection() -> (Int,Int) {
            switch direction {
            case 0:
                return (x,y-1)
            case 1:
                return (x-1,y)
            case 2:
                return (x,y+1)
            case 3:
                return (x+1,y)
            default:
                return (x,y)
            }
        }
        mutating func turnLeft() {
            if direction==0 {
                direction+=3
            }else {
                direction-=1
            }
        }
    }
    let room = Room()
    room
}
