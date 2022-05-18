import Foundation

struct 짝수와홀수 {
    static func solution(_ num:Int) -> String {
        return num % 2 == 0 ? "Even" : "Odd"
    }
}
