import Foundation

struct 문자열압축 {
    static func solution(_ s: String) -> Int {
        var result: Int = s.count

        if result < 3 { return result }

        for length in 1...s.count/2 {
            var string: String = s
            var stringArray: [String] = []
            while string.count - length >= 0 {
                stringArray.append(String(string.prefix(length)))
                string = String(string.suffix(string.count - length))
            }
            stringArray.append(string)

            var tempString: String = ""
            var lastString: String = ""
            var count: Int = 1

            for string in stringArray {
                if lastString == "" {
                    lastString = string
                    continue
                }
                if lastString == string {
                    count += 1
                    continue
                }
                tempString += count == 1 ? "\(lastString)" : "\(count)\(lastString)"
                lastString = string
                count = 1
            }
            tempString += count == 1 ? "\(lastString)" : "\(count)\(lastString)"
            result = min(tempString.count, result)
        }
        return result
    }
}
