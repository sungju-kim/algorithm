import Foundation

struct 예산 {
    static func solution(_ d:[Int], _ budget:Int) -> Int {
        if d.reduce(0, +) == budget { return d.count }
        
        var budget = budget
        return d.sorted().filter{
            if budget >= $0 {
                budget -= $0
                return true
            } else {
                return false
            }
        }.count
    }
}
