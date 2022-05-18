import Foundation

struct N으로표현 {
    static func solution(_ N:Int, _ number:Int) -> Int {
        if number == 1 {
            return 1
        }
        var dp: [Set<Int>] = Array(repeating: Set<Int>(), count: 9)
        var answer = -1
        for i in 1...8 {
            dp[i].insert(Int(String(repeating: String(N), count: i))!)
        }
        for i in 1..<9 {
            for x in 1..<i {
                for y in 1...(i-x){
                    for a in dp[x] {
                        for b in dp[y]{
                            dp[i].insert(a+b)
                            dp[i].insert(a*b)
                            if a >= b {
                                dp[i].insert(a-b)
                            }
                            if b != 0 {
                                dp[i].insert(a/b)
                            }
                        }
                    }
                }
            }
            if dp[i].contains(number) {
                answer = i
                break
            }
        }
        return answer
    }
}
