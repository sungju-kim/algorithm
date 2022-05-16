import Foundation

struct StringCompress {
    static func solution(_ s:String) -> Int {
        let string = s
        let newString = sliceString(string)
        let compress = newString.count
        let compressedString = String(compress) + newString
        
        return compressedString.count
    }
    
    static func sliceString(_ s: String) -> String {
        let string = s
        var prefixed = string
        for i in 0..<string.count {
            let prefixedString = String(string.prefix(string.count-i))
            let nextPreFixedString = string.suffix(i)
            if prefixedString == nextPreFixedString {
                prefixed = prefixedString
                break
            }
        }
        return prefixed
    }
}
