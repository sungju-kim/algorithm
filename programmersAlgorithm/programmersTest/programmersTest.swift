import XCTest

class programmersTest: XCTestCase {
    func test약수의갯수와덧셈() {
        XCTAssertTrue(약수의갯수와덧셈.solution(13, 17) == 43)
        XCTAssertTrue(약수의갯수와덧셈.solution(24, 27) == 52)
    }
    
    func test소수만들기() {
        XCTAssertTrue(소수만들기.solution([1,2,3,4]) == 1)
        XCTAssertTrue(소수만들기.solution([1,2,7,6,4]) == 4)
    }
    
    func test내적() {
        XCTAssertTrue(내적.solution([1,2,3,4], [-3,-1,0,2]) == 3)
        XCTAssertTrue(내적.solution([-1,0,1], [1,0,-1]) == -2)
    }
    
    func testPlusMinus() {
        XCTAssertTrue(PlusMinus.solution([4,7,12], [true,false,true]) == 9)
        XCTAssertTrue(PlusMinus.solution([1,2,3], [false,false,true]) == 0)
    }
    
    func testMissingNumber() {
        XCTAssertTrue(MissingNumber.solution([1,2,3,4,6,7,8,0]) == 14)
        XCTAssertTrue(MissingNumber.solution([5,8,4,0,6,7,9]) == 6)
    }
    
    func testGymSuit() {
        XCTAssertTrue(GymSuit.solution(5, [2, 4], [1, 3, 5]) == 5)
        XCTAssertTrue(GymSuit.solution(5, [2, 4], [3]) == 4)
        XCTAssertTrue(GymSuit.solution(3, [3], [1]) == 2)
    }
    
    func testTouchKeyPad() {
        XCTAssertTrue(TouchKeyPad.solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right") == "LRLLLRLLRRL")
        XCTAssertTrue(TouchKeyPad.solution([7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2], "left") == "LRLLRRLLLRR")
        XCTAssertTrue(TouchKeyPad.solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 0], "right") == "LLRLLRLLRL")
    }
    
    func testNumberString() {
        XCTAssertTrue(NumberString.solution("one4seveneight") == 1478 )
        XCTAssertTrue(NumberString.solution("23four5six7") == 234567 )
        XCTAssertTrue(NumberString.solution("2three45sixseven") == 234567 )
        XCTAssertTrue(NumberString.solution("123") == 123 )
    }
    
    func testDividableArray() {
        XCTAssertTrue(DividableArray.solution([5, 9, 7, 10], 5) == [5, 10])
        XCTAssertTrue(DividableArray.solution([2, 36, 1, 3], 1) == [1, 2, 3, 36])
        XCTAssertTrue(DividableArray.solution([3,2,6], 10) == [-1])
    }
    
    func testDollCount() {
        XCTAssertTrue(DollCount.solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]) == 4)
    }
    
    func testPopAndSum() {
        XCTAssertTrue(PopAndSum.solution([2,1,3,4,1]) == [2,3,4,5,6,7])
        XCTAssertTrue(PopAndSum.solution([5,0,2,7]) == [2,5,7,9,12])
    }
    
    func testMockExam() {
        XCTAssertTrue(MockExam.solution([1,2,3,4,5]) == [1])
        XCTAssertTrue(MockExam.solution([1,3,2,4,2]) == [1,2,3])
    }
    
    func testDays2016() {
        XCTAssertTrue(Days2016.solution(5, 24) == "TUE")
    }
    
    func testFacterSum() {
        XCTAssertTrue(FactersSum.solution(12) == 28)
        XCTAssertTrue(FactersSum.solution(5) == 6)
    }
    
    func testSuggestNewId() {
        XCTAssertTrue(SuggestNewId.solution("...!@BaT#*..y.abcdefghijklm") == "bat.y.abcdefghi")
        XCTAssertTrue(SuggestNewId.solution("z-+.^.") == "z--")
        XCTAssertTrue(SuggestNewId.solution("=.=") == "aaa")
        XCTAssertTrue(SuggestNewId.solution("123_.def") == "123_.def")
        XCTAssertTrue(SuggestNewId.solution("abcdefghijklmn.p") == "abcdefghijklmn")
    }
    
    func testLottos() {
        XCTAssertTrue(Lottos.solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]) == [3, 5])
        XCTAssertTrue(Lottos.solution([0, 0, 0, 0, 0, 0], [38, 19, 20, 40, 15, 25]) == [1, 6])
        XCTAssertTrue(Lottos.solution([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35]) == [1, 1])
        
    }
    
    //    func testStringCompress() {
    //        XCTAssertTrue(stringCompress.solution("aabbaccc") == 7)
    //        XCTAssertTrue(stringCompress.solution("ababcdcdababcdcd") == 9)
    //        XCTAssertTrue(stringCompress.solution("abcabcdede") == 8)
    //        XCTAssertTrue(stringCompress.solution("abcabcabcabcdededededede") == 14)
    //        XCTAssertTrue(stringCompress.solution("xababcdcdababcdcd") == 17)
    //    }
    
    func testOddString() {
        XCTAssertTrue(OddString.solution("try hello world") == "TrY HeLlO WoRlD")
    }
    
    func testKNum() {
        XCTAssertTrue(KNum.solution([1,5,2,6,3,7,4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]) == [5, 6, 3])
    }
    
    func testSearchNum() {
        XCTAssertTrue(SearchNum.solution(10) == 3 )
        XCTAssertTrue(SearchNum.solution(12) == 11 )
    }
    
    func testBadUser() {
        XCTAssertTrue(BadUser.solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2) == [2,1,1,0] )
        XCTAssertTrue(BadUser.solution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3) == [0,0] )
    }
}
