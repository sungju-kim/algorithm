import Foundation

struct TouchKeyPad {
    func solution(_ numbers:[Int], _ hand:String) -> String {
        var result = ""
        
        var lastLeft: (Int,Int) = (1,4)
        var lastRight: (Int,Int) = (3,4)
        
        let whichHand: (Int) -> String = { number in
            var currentPos: (Int,Int) {
                return number == 0 ? (2, 4) : (number % 3, (number + 2)/3)
            }
            var handResult = ""
            let leftDistance: Int = abs(lastLeft.0 - currentPos.0) + abs(lastLeft.1 - currentPos.1)
            let rightDistance: Int = abs(lastRight.0 - currentPos.0) + abs(lastRight.1 - currentPos.1)
            
            if leftDistance == rightDistance {
                switch hand {
                case "right":
                    handResult = "R"
                    lastRight = currentPos
                case "left":
                    handResult = "L"
                    lastLeft = currentPos
                default:
                    break
                }
            } else {
                if leftDistance > rightDistance {
                    handResult = "R"
                    lastRight = currentPos
                } else {
                    handResult = "L"
                    lastLeft = currentPos
                }
            }
            return handResult
        }
        
        let chooseHand: (Int) -> String = { number in
            switch number {
            case 1:
                lastLeft = (1,1)
                return "L"
            case 4:
                lastLeft = (1,2)
                return "L"
            case 7:
                lastLeft = (1,3)
                return "L"
            case 3,6,9:
                lastRight = (3,number/3)
                return "R"
            default:
                return whichHand(number)
            }
        }
        for i in numbers {
            result += chooseHand(i)
        }
        return result
    }
}
