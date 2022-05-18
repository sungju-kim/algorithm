import Foundation

struct 문자열내마음대로정렬하기 {
    static func solution(_ strings:[String], _ n:Int) -> [String] {
        let index = strings[0].index(strings[0].startIndex, offsetBy: n)
        
        return strings.sorted(by: { (string1, string2) -> Bool in
            return string1[index] == string2[index] ? string1 < string2 : string1[index] < string2[index]
        })
    }
}
