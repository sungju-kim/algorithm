import Foundation

func searchNumSolution(_ n:Int) -> Int {
    for i in 1...n {
        if n % i == 1 {
            return i
        }
    }
    return 0
}
