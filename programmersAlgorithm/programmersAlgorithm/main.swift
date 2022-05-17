import Foundation

func solution( s: String) -> Int {
    var answer = s.count
    
    let cut: ( _ s: String, _ n: Int) -> Int = { s, n in
        var i = s.startIndex
        var arr: [(String, Int)] = [(String(s[i..<s.index(i, offsetBy: n)]), 1)]
        while s.index(i, offsetBy: n) <= s.endIndex {
            i = s.index(i, offsetBy: n)
            let target = String(s[i ..< s.index(i, offsetBy: n)])
            if arr.last!.0 == target {
                arr[arr.count - 1].1 += 1
            } else {
                arr.append((target, 1))
            }
        }
        
        return arr.reduce(0) { (acc: Int, cur: (String, Int)) -> Int in
            if cur.1 == 1 { return acc + cur.0.count }
            return acc + cur.0.count + String(cur.1).count
        }
    }
    
    for i in 1..<s.count {
        let target = cut(s, i)
        answer = answer < target ? answer : target
    }
    return answer
}

let s1 = "aabbaccc"
// 7

let s2 = "ababcdcdababcdcd"
// 9

let s3 = "abcabcdede"
// 8

let s4 = "abcabcabcabcdededededede"
// 14

let s5 = "xababcdcdababcdcd"
// 17

//print(solution(s1), solution(s2), solution(s3), solution(s4), solution(s5))
print(solution(s: s1))
