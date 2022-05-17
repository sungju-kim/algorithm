import Foundation

struct 두정수사이의합 {
    static func solution(_ a:Int, _ b:Int) -> Int64 {
        if a == b { return Int64(a) }
        return Int64((abs(a-b)+1) * (a+b)/2)
    }
}
