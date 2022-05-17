import Foundation

struct P와Y의개수 {
    static func solution(_ s: String) -> Bool {
        return s.lowercased().filter{ $0 == "p" }.count == s.lowercased().filter{ $0 == "y" }.count
    }
}
