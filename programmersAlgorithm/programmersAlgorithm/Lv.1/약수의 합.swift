import Foundation

struct FactersSum {
    static func solution(_ n:Int) -> Int {
        var facters : [Int] = []
        if n > 0 {
            for i in 1...n {
                if n % i == 0{
                    facters.append(i)
                }
            }
            return facters.reduce(0, +)
        }else {
            return 0
        }
    }    
}

