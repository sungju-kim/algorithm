//
//  방문 길이.swift
//  programmersAlgorithm
//
//  Created by dale on 2022/07/12.
//

import Foundation

struct 방문길이 {
    static func solution(_ dirs:String) -> Int {
        var moved: Set<Way> = []
        var currentPoint: Point = Point()

        for direction in dirs {
            let nextPoint = currentPoint.nextPoint(direction)
            if currentPoint == nextPoint {
                continue
            }
            moved.insert(Way(from: currentPoint, to: nextPoint))
            currentPoint = nextPoint
        }
        return moved.count
    }

    struct Way: Hashable {
        var from: Point
        var to: Point

        static func == (lhs: Way, rhs: Way) -> Bool {
            return (lhs.from == rhs.from && lhs.to == rhs.to) || (lhs.from == rhs.to && lhs.to == rhs.from)
        }

        func hash(into hasher: inout Hasher) { }
    }

    struct Point: Hashable {
        var x: Int = 0
        var y: Int = 0

        func nextPoint(_ direction: Character) -> Point {
            let isInMap: (Int, Int) -> Bool = { x, y in
                return (-5...5).contains(x) && (-5...5).contains(y)
            }

            var nextX = x, nextY = y

            switch direction {
            case "U":
                nextY += 1
            case "D":
                nextY -= 1
            case "L":
                nextX -= 1
            case "R":
                nextX += 1
            default:
                return self
            }
            return isInMap(nextX, nextY) ? Point(x: nextX, y: nextY) : self
        }
    }
}
