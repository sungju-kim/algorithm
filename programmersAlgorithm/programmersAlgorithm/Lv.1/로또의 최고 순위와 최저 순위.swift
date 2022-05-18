import Foundation

struct Lottos {
    static func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
        let maxNum = lottos.filter{win_nums.contains($0)}.count + lottos.filter{Int($0) == 0}.count
        let minNum = lottos.filter{win_nums.contains($0)}.count
        
        return [returnMaxMin(maxNum), returnMaxMin(minNum)]
    }
    
    static func returnMaxMin(_ num : Int) -> Int {
        switch num {
        case 6:
            return 1
        case 5:
            return 2
        case 4:
            return 3
        case 3:
            return 4
        case 2:
            return 5
        default:
            return 6
        }
    }
}
