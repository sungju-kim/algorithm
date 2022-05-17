import Foundation

struct 수박수박수 {
    static func solution(_ n:Int) -> String {
        return (0..<n).map{ $0 % 2 == 0 ? "수" : "박" }.joined()
    }
}
