import Foundation

struct NumberString {
    static func solution(_ s:String) -> Int {
        var resultString = s
        let strings = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
        let numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        
        (0..<strings.count).forEach{resultString = resultString.replacingOccurrences(of: strings[$0], with: numbers[$0])}
        return Int(resultString)!
    }
}
