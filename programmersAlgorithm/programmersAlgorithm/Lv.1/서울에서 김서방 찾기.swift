import Foundation

struct 서울에서김서방찾기 {
    static func solution(_ seoul:[String]) -> String {
        return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
    }
}
