import Foundation

struct 내적 {
    static func solution(_ a:[Int], _ b:[Int]) -> Int {
        
        return zip(a, b).map(*).reduce(0, +)
    }
}
