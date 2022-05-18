import Foundation

struct 시저암호 {
    static func solution(_ s:String, _ n:Int) -> String {
        return s.map { (letter) -> String in
            let origin: UInt8 = letter.isUppercase ? 65 : 97
            return letter.isLetter ? String(UnicodeScalar((letter.asciiValue! + UInt8(n) - origin) % 26 + origin)) : " "
        }.joined()
    }
}
