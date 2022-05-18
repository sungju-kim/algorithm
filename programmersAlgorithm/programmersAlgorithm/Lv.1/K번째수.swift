import Foundation

struct KNum {
    static func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
        var result : [Int] = []
        commands.forEach{result.append(array[($0[0]-1)...($0[1]-1)].sorted()[$0[2]-1])}
        return result
    }    
}

