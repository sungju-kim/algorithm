import Foundation

func popAndSum(_ numbers:[Int]) -> [Int] {
    var sumArr : Set<Int> = []
    for i in 0..<numbers.count{
        for j in i+1..<numbers.count{
            sumArr.insert(numbers[i]+numbers[j])
        }
    }
    return Array(sumArr).sorted()
}
