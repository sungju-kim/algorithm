import Foundation

struct 정수제곱근판별 {
    static func solution(_ n:Int64) -> Int64 {
        let sqrtNum = sqrt(Double(n))
        return sqrtNum == floor(sqrtNum) ? Int64(pow(sqrtNum+1, 2)) : -1
    }
}
