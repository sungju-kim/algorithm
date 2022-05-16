import XCTest

class programmersTest: XCTestCase {
    
    func testNumberString() {
        let numberString = NumberString()
        XCTAssertTrue(numberString.solution("one4seveneight") == 1478 )
        XCTAssertTrue(numberString.solution("23four5six7") == 234567 )
        XCTAssertTrue(numberString.solution("2three45sixseven") == 234567 )
        XCTAssertTrue(numberString.solution("123") == 123 )
    }
    
    func testDividableArray() {
        let dividableArray = DividableArray()
        XCTAssertTrue(dividableArray.solution([5, 9, 7, 10], 5) == [5, 10])
        XCTAssertTrue(dividableArray.solution([2, 36, 1, 3], 1) == [1, 2, 3, 36])
        XCTAssertTrue(dividableArray.solution([3,2,6], 10) == [-1])
    }
    
    func testDollCount() {
        let dollCount = DollCount()
        XCTAssertTrue(dollCount.solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]) == 4)
    }
    
    func testPopAndSum() {
        let popAndSum = PopAndSum()
        XCTAssertTrue(popAndSum.solution([2,1,3,4,1]) == [2,3,4,5,6,7])
        XCTAssertTrue(popAndSum.solution([5,0,2,7]) == [2,5,7,9,12])
    }
    
    func testMockExam() {
        let mockExam = MockExam()
        XCTAssertTrue(mockExam.solution([1,2,3,4,5]) == [1])
        XCTAssertTrue(mockExam.solution([1,3,2,4,2]) == [1,2,3])
    }
    
    func testDays2016() {
        let days2016 = Days2016()
        XCTAssertTrue(days2016.solution(5, 24) == "TUE")
    }
    
    func testFacterSum() {
        let facterSum = FactersSum()
        XCTAssertTrue(facterSum.solution(12) == 28)
        XCTAssertTrue(facterSum.solution(5) == 6)
    }
    
    func testSuggestNewId() {
        let suggestNewId = SuggestNewId()
        XCTAssertTrue(suggestNewId.solution("...!@BaT#*..y.abcdefghijklm") == "bat.y.abcdefghi")
        XCTAssertTrue(suggestNewId.solution("z-+.^.") == "z--")
        XCTAssertTrue(suggestNewId.solution("=.=") == "aaa")
        XCTAssertTrue(suggestNewId.solution("123_.def") == "123_.def")
        XCTAssertTrue(suggestNewId.solution("abcdefghijklmn.p") == "abcdefghijklmn")
    }
    
    func testLottos() {
        let lottos = Lottos()
        XCTAssertTrue(lottos.solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]) == [3, 5])
        XCTAssertTrue(lottos.solution([0, 0, 0, 0, 0, 0], [38, 19, 20, 40, 15, 25]) == [1, 6])
        XCTAssertTrue(lottos.solution([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35]) == [1, 1])
        
    }

//    func testStringCompress() {
//        let stringCompress = StringCompress()
//        XCTAssertTrue(stringCompress.solution("aabbaccc") == 7)
//        XCTAssertTrue(stringCompress.solution("ababcdcdababcdcd") == 9)
//        XCTAssertTrue(stringCompress.solution("abcabcdede") == 8)
//        XCTAssertTrue(stringCompress.solution("abcabcabcabcdededededede") == 14)
//        XCTAssertTrue(stringCompress.solution("xababcdcdababcdcd") == 17)
//    }
    
    func testOddString() {
        let oddString = OddString()
        XCTAssertTrue(oddString.solution("try hello world") == "TrY HeLlO WoRlD")
    }
    
    func testKNum() {
        let kNum = KNum()
        XCTAssertTrue(kNum.solution([1,5,2,6,3,7,4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]) == [5, 6, 3])        
    }
    
    func testSearchNum() {
        let searchNum = SearchNum()
        XCTAssertTrue(searchNum.solution(10) == 3 )
        XCTAssertTrue(searchNum.solution(12) == 11 )

    }
    
    func testBadUser() {
        let badUser = BadUser()
        XCTAssertTrue(badUser.solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2) == [2,1,1,0] )
        XCTAssertTrue(badUser.solution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3) == [0,0] )
    }

}
