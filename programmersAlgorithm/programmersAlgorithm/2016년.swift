import Foundation

func daysIn2016(_ a:Int, _ b:Int) -> String {
    let month = a
    var day = b
    let days = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let dayArr = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    for i in 0..<month-1 {
        day += days[i]
    }
    print(day)
    
    return "\(dayArr[day%(7)])"
}





