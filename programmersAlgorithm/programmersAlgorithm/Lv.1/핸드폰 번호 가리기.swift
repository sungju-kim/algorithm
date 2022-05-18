import Foundation

struct 핸드폰번호가리기 {
    static func solution(_ phone_number:String) -> String {
        return String(repeating: "*", count: phone_number.count - 4) + phone_number.suffix(4)
    }
}
