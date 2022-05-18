import Foundation

struct StringCompress {
    static func solution(_ s:String) -> Int {
        if s.count < 3 { return s.count }
        
        var result: Int = s.count
        
        for length in 1...s.count/2 {
            let temp = compressString(sliceString(s, length)).count
            result = temp < result ? temp : result
        }
        
        return result
    }
    
    static func sliceString(_ str: String, _ length: Int) -> [String] {
        var string: String = str
        var result: [String] = []
        while string.count - length >= 0 {
            result.append(String(string.prefix(length)))
            string = String(string.suffix(string.count - length))
        }
        if string != "" { result.append(string) }
        return result
    }
    
    static func compressString(_ array: [String]) -> String {
        var result: String = ""
        var lastString: String = ""
        var count: Int = 1
        
        for string in array {
            if lastString == "" {
                lastString = string
                continue
            }
            if lastString == string {
                count += 1
            } else {
                result += count == 1 ? "\(lastString)" : "\(count)\(lastString)"
                lastString = string
                count = 1
            }
        }
        result += count == 1 ? "\(lastString)" : "\(count)\(lastString)"
        return result
    }
}
