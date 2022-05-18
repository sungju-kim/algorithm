import Foundation

struct 타겟넘버 {
    static func solution(_ numbers:[Int], _ target:Int) -> Int {
        var count : Int = 0
        func dfs(num: Int, index: Int){
            if index >= numbers.count {
                if num == target {
                    count += 1
                }
                return
            }
            let nextNumber = numbers[index]
            dfs(num: num+nextNumber, index: index+1)
            dfs(num: num-nextNumber, index: index+1)
        }
        
        dfs(num: 0, index: 0)
        return count
    }
}
