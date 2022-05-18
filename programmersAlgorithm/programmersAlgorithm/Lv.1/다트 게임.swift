import Foundation

struct 다트게임 {
    static func solution(_ dartResult:String) -> Int {
        var scores = dartResult.split{!$0.isNumber}.map{Int(String($0))!}
        let types = dartResult.split{$0.isNumber}
        
        (0..<types.count).forEach{
            let score = scores[$0]
            let type = types[$0]
            let option = type.count == 1 ? 1 : type.suffix(1) == "*" ? 2 : -1
            scores[$0] = type.prefix(1) == "D" ? score * score : type.prefix(1) == "T" ? score * score * score : score
            scores[$0] *= option
            
            if $0 > 0 && option == 2 {
                scores[$0-1] *= option
            }
        }
        return scores.reduce(0, +)
    }
}
