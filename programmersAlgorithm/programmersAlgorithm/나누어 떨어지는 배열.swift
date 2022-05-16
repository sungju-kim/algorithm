import Foundation

func divideAvailableArray(_ arr:[Int], _ divisor:Int) -> [Int] {
    let array = arr.sorted().filter{$0 % divisor == 0}
    return array == [] ? [-1] : array
}
