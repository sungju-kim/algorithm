import Foundation

struct Failure {
    static func solution(_ N:Int, _ stages:[Int]) -> [Int] {
        var result : [Int:Float] = [:]
        let dic = stages.reduce(into: [Int:Int]()) { $0[$1, default: 0] += 1 }
        for n in 1...N {
            result[n] = Float(dic[n] ?? 0) / Float(dic.filter { n < $0.key }.map { $0.value }.reduce(0, +))
        }
        return result.sorted(by: <).sorted { $0.value > $1.value }.map { $0.key }
    }
}
