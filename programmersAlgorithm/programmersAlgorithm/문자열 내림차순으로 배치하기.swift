import Foundation

struct 내림차순배치하기 {
    static func solution(_ s:String) -> String {
        return String(s.sorted(by: >))
    }
}
