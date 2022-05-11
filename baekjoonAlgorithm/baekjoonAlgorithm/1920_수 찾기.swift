import Foundation

func p1920() {
    let _ = Int(readLine()!)!
    let arr = readLine()!.components(separatedBy: " ").map{Int($0)!}
    let _ = Int(readLine()!)!
    let nums = readLine()!.components(separatedBy: " ").map{Int($0)!}
    
    var temp: [Int: Bool] = [:]
    arr.forEach{temp[$0] = true}
    nums.forEach{arr.contains($0) ? print(1) : print(0)}
}
