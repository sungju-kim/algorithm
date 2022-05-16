import Foundation

func suggestNewId(_ new_id:String) -> String {
    var newId = new_id
    newId = lowerCaseId(id: newId) // 1단계
    newId = removeOtherCharacter(id: newId) // 2단계
    newId = removeDoubleComma(id: newId) // 3단계
    newId = removeFirstEndComma(id: newId) // 4단계
    newId = addAIfEmpty(id: newId) // 5단계
    newId = slicingId(id: newId) // 6단계
    newId = addUntilThree(id: newId)
    return newId
}

func lowerCaseId(id : String) -> String {
    return id.lowercased()
}

func removeOtherCharacter(id : String) -> String {
    let checkCharater = ["-","_","."]
    return id.filter{$0.isLetter || $0.isNumber || checkCharater.contains(String($0))}.map{String($0)}.joined()
}

func removeDoubleComma(id : String) -> String {
    var newId = id
    while newId.contains("..") {
       newId = newId.replacingOccurrences(of: "..", with: ".")
    }
    return newId
}

func removeFirstEndComma(id : String) -> String{
    return id.trimmingCharacters(in: ["."])
}

func addAIfEmpty(id : String) -> String {
    var newId = id
    if newId.isEmpty {
        newId = "a"
    }
    return newId
}

func slicingId(id : String) -> String {
    var newId = id
    if id.count > 15 {
        newId = String(newId.prefix(15))
        newId = removeFirstEndComma(id: newId)
    }
    return newId
}

func addUntilThree(id : String) -> String {
    var newId = id
    while newId.count <= 2{
        newId += String(newId.suffix(1))
    }
    return newId
}
