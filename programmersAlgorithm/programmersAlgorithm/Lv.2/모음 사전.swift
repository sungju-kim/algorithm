import Foundation
struct 모음사전 {
    static func solution(_ word:String) -> Int {
        let alphabets: [String: Int] = ["A": 0, "E": 1, "I": 2, "O": 3, "U": 4]
        let d = [781, 156, 31, 6, 1]
        
        return word.enumerated().map{
            d[$0.offset] * alphabets[String($0.element)]!
        }.reduce(word.count, +)
    }
}
