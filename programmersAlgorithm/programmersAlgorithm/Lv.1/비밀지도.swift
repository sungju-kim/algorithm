import Foundation

struct 비밀지도 {
    static func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
        
        
        return (0..<n).map { (i) -> String in
            let temp = String(arr1[i] | arr2[i], radix: 2)
            return (String(repeating: " ", count: n-temp.count) + temp).replacingOccurrences(of: "1", with: "#").replacingOccurrences(of: "0", with: " ")
        }
    }
}
