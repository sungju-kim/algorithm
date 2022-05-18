import Foundation

struct DollCount {
    static func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
        var dollCount = 0
        var boardArr = board
        let rowNum = board.count-1
        var basket : [Int] = [0]
        for j in moves {
            for i in 0...rowNum{
                if boardArr[i][j-1] != 0 {
                    if basket[basket.count-1] == boardArr[i][j-1] {
                        dollCount += 2
                        basket.removeLast()
                    } else {
                        basket.append(boardArr[i][j-1])
                    }
                    boardArr[i][j-1] = 0
                    break
                }
            }
        }
        return dollCount
    }
}
