import Foundation

struct 자릿수더하기 {
    static func solution(_ n:Int) -> Int {
        return String(n).reduce(0, {$0 + Int(String($1))!})
    }
}
