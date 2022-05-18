import Foundation

struct 자연수뒤집어배열로만들기 {
    static func solution(_ n:Int64) -> [Int] {
        return Array(String(n).reversed()).map{Int(String($0))!}
    }
}
