import Foundation

struct Days2016 {
    static func solution(_ a:Int, _ b:Int) -> String {
        let month = a
        var day = b
        let days = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        let dayArr = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
        for i in 0..<month-1 {
            day += days[i]
        }
        return "\(dayArr[day%(7)])"
    }    
}

