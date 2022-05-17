import Foundation

struct MissingNumber {
    static func solution(_ numbers:[Int]) -> Int {
        return 45 - numbers.reduce(0, +)
    }
}
