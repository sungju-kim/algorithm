import Foundation

func badUserSolution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var totalId: [String: [String: Int]] = [:]
    var reports: [String: Int] = [:]
    var bannedUser: [String] = []
    id_list.forEach{
        totalId[$0] = [:]
        reports[$0] = 0
    }
    report.forEach{
        let temp = $0.components(separatedBy: " ").map{String($0)}
        totalId[temp[0]]![temp[1]] = 1
    }
    totalId.keys.forEach{
        totalId[$0]!.keys.forEach{
            reports[$0]! += 1
        }
    }
    reports.forEach{
        if $0.value >= k {
            bannedUser.append($0.key)
        }
    }
    var result:  [Int] = Array(repeating: 0, count: id_list.count)
    for i in 0..<id_list.count {
        bannedUser.forEach{
            if totalId[id_list[i]]!.keys.contains($0) {
                result[i] += 1
            }
        }
        
    }
    return result
}
