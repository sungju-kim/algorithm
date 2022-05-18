import Foundation

struct 평균구하기 {
    static func solution(_ arr:[Int]) -> Double {
        return Double(arr.reduce(0, +)) / Double(arr.count)
    }
}
