import Foundation

struct 문자열다루기기본 {
    static func solution(_ s:String) -> Bool {
        if s.count != 4 && s.count != 6 { return false }
        guard let _ = Int(s) else { return false }
        return true
    }
}
