import Foundation

struct 최대공약수와최소공배수 {
    static func solution(_ n:Int, _ m:Int) -> [Int] {
        return [gcd(n, m), lcm(n, m)]
    }
    
    static func gcd(_ num: Int, _ num2: Int) -> Int {
        let rod: Int = num % num2
        return 0 == rod ? min(num, num2) : gcd(num2, rod)
    }
    
    static func lcm(_ a: Int, _ b: Int) -> Int {
        return a * b / gcd(a, b)
    }
}
