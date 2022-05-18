import Foundation

struct 제일작은수제거하기 {
    static func solution(_ arr:[Int]) -> [Int] {
        let min = arr.min()
        return arr.count == 1 ? [-1] : arr.filter{$0 != min}
    }
}
