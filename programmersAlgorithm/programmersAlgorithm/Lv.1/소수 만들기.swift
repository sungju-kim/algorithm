import Foundation

struct 소수만들기 {
    static func solution(_ nums:[Int]) -> Int {
        let isPrime: (Int) -> Bool = { number in
            for i in 2...Int(sqrt(Double(number))){
                if number % i == 0 {
                    return false
                }
            }
            return true
        }
        
        var result: Int = 0
        let n: Int = nums.count
        
        for i in 0..<n {
            for j in i+1..<n {
                for k in j+1..<n {
                    if isPrime(nums[i] + nums[j] + nums[k]) {
                        result += 1
                    }
                }
            }
        }
        return result
    }
}
