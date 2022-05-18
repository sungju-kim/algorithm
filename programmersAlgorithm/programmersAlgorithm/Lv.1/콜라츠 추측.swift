import Foundation

struct 콜라츠추측 {
    static func solution(_ num:Int) -> Int {
        return colatz(num, 0)
    }
    
    static func colatz(_ num: Int, _ count: Int) -> Int {
        if num == 1 {
            return count
        }
        
        if count == 500 {
            return -1
        }
        
        return colatz(num % 2 == 0 ? num/2 : num * 3 + 1, count + 1)
    }
}
