import Foundation

struct X만큼간격이있는N개의숫자{
    static func solution(_ x:Int, _ n:Int) -> [Int64] {
        return (1...n).map{Int64(x * $0)}
    }
}
