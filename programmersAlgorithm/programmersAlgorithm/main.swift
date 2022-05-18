import Foundation

var dartResult = "10d2s#3d4s5d6s7d8"
var score = dartResult.split{!$0.isNumber}.map{Int(String($0))!}
let type = dartResult.split{$0.isNumber}
print(score)
print(type)
type.forEach{$0.map{$0}}
