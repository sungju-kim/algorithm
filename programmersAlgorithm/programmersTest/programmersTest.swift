import XCTest

class programmersTest: XCTestCase {
    func test최대공약수와최소공배수() {
        XCTAssertTrue(최대공약수와최소공배수.solution(3, 12) == [3, 12])
        XCTAssertTrue(최대공약수와최소공배수.solution(2, 5) == [1, 10])
    }
    
    func test짝수와홀수() {
        XCTAssertTrue(짝수와홀수.solution(3) == "Odd")
        XCTAssertTrue(짝수와홀수.solution(4) == "Even")
    }
    
    func test제일작은수제거하기() {
        XCTAssertTrue(제일작은수제거하기.solution([4, 3 ,2 ,1]) == [4, 3, 2])
        XCTAssertTrue(제일작은수제거하기.solution([10]) == [-1])
        XCTAssertTrue(제일작은수제거하기.solution([4,3,2,1,5,6,7]) == [4,3,2,5,6,7])
    }
    
    func test타겟넘버() {
        XCTAssertTrue(타겟넘버.solution([1, 1, 1, 1, 1], 3) == 5)
        XCTAssertTrue(타겟넘버.solution([4, 1, 2, 1], 4) == 2)
    }
    
    func test단어변환() {
        XCTAssertTrue(단어변환.solution("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]) == 4)
        XCTAssertTrue(단어변환.solution("hit", "cog", ["hot", "dot", "dog", "lot", "log"]) == 0)
    }
    
    func testN으로표현() {
        XCTAssertTrue(N으로표현.solution(5, 12) == 4)
        XCTAssertTrue(N으로표현.solution(2, 11) == 3)
    }
    
    func test정수제곱근판별() {
        XCTAssertTrue(정수제곱근판별.solution(121) == 144)
        XCTAssertTrue(정수제곱근판별.solution(3) == -1)
    }
    
    func test정수내림차순으로배치하기() {
        XCTAssertTrue(정수내림차순으로배치하기.solution(118372) == 873211)
    }
    
    func test자연수뒤집어배열로만들기() {
        XCTAssertTrue(자연수뒤집어배열로만들기.solution(12345) == [5,4,3,2,1])
    }
    
    func test자릿수더하기() {
        XCTAssertTrue(자릿수더하기.solution(123) == 6)
        XCTAssertTrue(자릿수더하기.solution(987) == 24)
    }
    
    func test시저암호() {
        XCTAssertTrue(시저암호.solution("AB" ,1) == "BC")
        XCTAssertTrue(시저암호.solution("z", 1) == "a")
        XCTAssertTrue(시저암호.solution("a B z", 4) == "e F d")
    }
    
    func test문자열정수로바꾸기() {
        XCTAssertTrue(문자열정수로바꾸기.solution("1234") == 1234)
        XCTAssertTrue(문자열정수로바꾸기.solution("-1234") == -1234)
    }
    
    func test서울에서김서방찾기() {
        XCTAssertTrue(서울에서김서방찾기.solution(["Jane", "Kim"]) == "김서방은 1에 있다")
    }
    
    func test문자열다루기기본() {
        XCTAssertTrue(문자열다루기기본.solution("a234") == false)
        XCTAssertTrue(문자열다루기기본.solution("1234") == true)
        
    }
    
    func test내림차순배치하기() {
        XCTAssertTrue(내림차순배치하기.solution("Zbcdefg") == "gfedcbZ")
    }
    
    func testP와Y의개수() {
        XCTAssertTrue(P와Y의개수.solution("pPoooyY") == true)
        XCTAssertTrue(P와Y의개수.solution("Pyy") == false)
    }
    
    func test문자열내마음대로정렬하기() {
        XCTAssertTrue(문자열내마음대로정렬하기.solution(["sun", "bed", "car"], 1) == ["car", "bed", "sun"])
        XCTAssertTrue(문자열내마음대로정렬하기.solution(["abce", "abcd", "cdx"], 2) == ["abcd", "abce", "cdx"])
    }
    
    func test두정수사이의합() {
        XCTAssertTrue(두정수사이의합.solution(3, 5) == 12)
        XCTAssertTrue(두정수사이의합.solution(3, 3) == 3)
        XCTAssertTrue(두정수사이의합.solution(5, 3) == 12)
    }
    
    func test부족한금액계산() {
        XCTAssertTrue(부족한금액계산.solution(3, 20, 4) == 10)
    }
    
    func test최소직사각형() {
        XCTAssertTrue(최소직사각형.solution([[60, 50], [30, 70], [60, 30], [80, 40]]) == 4000)
        XCTAssertTrue(최소직사각형.solution([[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]) == 120)
        XCTAssertTrue(최소직사각형.solution([[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]]) == 133)
    }
    
    func test수박수박수() {
        XCTAssertTrue(수박수박수.solution(3) == "수박수")
        XCTAssertTrue(수박수박수.solution(4) == "수박수박")
    }
    
    func test예산() {
        XCTAssertTrue(예산.solution([1,3,2,5,4], 9) == 3)
        XCTAssertTrue(예산.solution([2,2,3,3], 10) == 4)
    }
    
    func testTernary() {
        XCTAssertTrue(Ternary.solution(45) == 7)
        XCTAssertTrue(Ternary.solution(125) == 229)
    }
    
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
    
        func testStringCompress() {
            XCTAssertTrue(StringCompress.solution("aabbaccc") == 7)
            XCTAssertTrue(StringCompress.solution("ababcdcdababcdcd") == 9)
            XCTAssertTrue(StringCompress.solution("abcabcdede") == 8)
            XCTAssertTrue(StringCompress.solution("abcabcabcabcdededededede") == 14)
            XCTAssertTrue(StringCompress.solution("xababcdcdababcdcd") == 17)
        }
    
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
