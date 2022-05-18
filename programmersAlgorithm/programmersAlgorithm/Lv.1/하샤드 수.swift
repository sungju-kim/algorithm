import Foundation

struct 하샤드수 {
    static func solution(_ x:Int) -> Bool {
        return x % String(x).map{Int(String($0))!}.reduce(0, +) == 0 ? true : false
    }
}
