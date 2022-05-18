import Foundation

struct 정수내림차순으로배치하기 {
    static func solution(_ n:Int64) -> Int64 {
        return Int64(String(String(n).map{$0}.sorted(by: >)))!
    }
}
