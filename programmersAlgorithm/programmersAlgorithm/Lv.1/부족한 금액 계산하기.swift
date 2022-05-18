import Foundation

struct 부족한금액계산 {
    static func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
        return Int64(max(price * (count * (count + 1) / 2) - money, 0))
    }
}
