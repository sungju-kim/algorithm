import Foundation

struct 최소직사각형 {
    static func solution(_ sizes:[[Int]]) -> Int {
        var x: Int = 0
        var y: Int = 0
        sizes.map{
            $0[0] > $0[1] ? [$0[0], $0[1]] : [$0[1], $0[0]]
        }.forEach{
            x = max($0[0],x)
            y = max($0[1],y)
        }
        return x * y
    }
}
