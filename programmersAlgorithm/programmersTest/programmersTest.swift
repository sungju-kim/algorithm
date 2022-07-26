import XCTest

class programmersTest: XCTestCase {
    func test문자열압축() {
        let value = 문자열압축.solution("aabbaccc"), result = 7
        let value2 = 문자열압축.solution("ababcdcdababcdcd"), result2 = 9
        let value3 = 문자열압축.solution("abcabcdede"), result3 = 8
        let value4 = 문자열압축.solution("abcabcabcabcdededededede"), result4 = 14
        let value5 = 문자열압축.solution("xababcdcdababcdcd"), result5 = 17
        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result2, "\(value2) != \(result2)")
        XCTAssertTrue(value3 == result3, "\(value3) != \(result3)")
        XCTAssertTrue(value4 == result4, "\(value4) != \(result4)")
        XCTAssertTrue(value5 == result5, "\(value5) != \(result5)")
    }
    func test자동완성() {
        let value = 자동완성.solution(["go","gone","guild"]), result = 7
        let value2 = 자동완성.solution(["abc","def","ghi","jklm"]), result2 = 4
        let value3 = 자동완성.solution(["word","war","warrior","world"]), result3 = 15
        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result2, "\(value2) != \(result2)")
        XCTAssertTrue(value3 == result3, "\(value3) != \(result3)")
    }
    func test가장먼노드() {
        let value = 가장먼노드.solution(6, [[3, 6], [4, 3], [3, 2], [1, 3], [1, 2], [2, 4], [5, 2]])
        let result = 3
        let value2 = 가장먼노드.solution(14, [[3, 6], [4, 3], [3, 2], [1, 3], [1, 2], [2, 4], [5, 2], [4, 9], [5, 9], [7, 6], [10, 6], [10, 4], [11, 10], [9, 11], [11, 12], [9, 13], [5, 14], [5, 8]])
        let result2 = 1
        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result2, "\(value2) != \(result2)")
    }
    func test이중우선순위큐() {
        let value = 이중우선순위큐.solution(["I 16", "I -5643", "D -1", "D 1", "D 1", "I 123", "D -1"])
        let value2 = 이중우선순위큐.solution(["I -45", "I 653", "D 1", "I -642", "I 45", "I 97", "D 1", "D -1", "I 333"])
        let value3 = 이중우선순위큐.solution(["I 4", "I -1", "I 6", "I 3"])
        let value4 = 이중우선순위큐.solution(["I 1", "I 2", "I 3", "I 4", "I 5", "D 1", "D -1", "D 1", "D -1","I 9", "I 1", "I 2", "I 3", "I 4", "I 5", "I 6"])
        let result = [0,0]
        let result2 = [333, -45]
        let result3 = [6, -1]
        let result4 = [9, 1]
        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result2, "\(value2) != \(result2)")
        XCTAssertTrue(value3 == result3, "\(value3) != \(result3)")
        XCTAssertTrue(value4 == result4, "\(value4) != \(result4)")
    }

    func test배달() {
        let value = 배달.solution(5, [[1,2,1],[2,3,3],[5,2,2],[1,4,2],[5,3,1],[5,4,2]], 3)
        let value2 = 배달.solution(6, [[1,2,1],[1,3,2],[2,3,2],[3,4,3],[3,5,2],[3,5,3],[5,6,1]], 4)
        let result = 4
        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result, "\(value2) != \(result)")
    }

    func test기능개발() {
        let value = 기능개발.solution([93, 30, 55], [1, 30, 5])
        let value2 = 기능개발.solution([95, 90, 99, 99, 80, 99], [1, 1, 1, 1, 1, 1])
        let result = [2, 1]
        let result2 = [1, 3, 2]

        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result2, "\(value2) != \(result2)")
    }

    func test베스트앨범() {
        let value = 베스트앨범.solution(["classic", "pop", "classic", "classic", "pop"], [500, 600, 150, 800, 2500])
        let result = [4, 1, 3, 0]
        XCTAssertTrue(value == result, "\(value) != \(result)")
    }

    func test짝지어제거하기() {
        let value = 짝지어제거하기.solution("baabaa")
        let value2 = 짝지어제거하기.solution("cdcd")
        let result = 1
        let result2 = 0
        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result2, "\(value2) != \(result2)")
    }

    func test영어끝말잇기() {
        let value = 영어끝말잇기.solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"])
        let value2 = 영어끝말잇기.solution(5, ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"] )
        let value3 = 영어끝말잇기.solution(2, ["hello", "one", "even", "never", "now", "world", "draw"])
        let result = [3,3]
        let result2 = [0,0]
        let result3 = [1,3]
        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result2, "\(value2) != \(result2)")
        XCTAssertTrue(value3 == result3, "\(value3) != \(result3)")
    }

    func test올바른괄호() {
        let value = 올바른괄호.solution("()()")
        let value2 = 올바른괄호.solution("(())()")
        let value3 = 올바른괄호.solution(")()(")
        let value4 = 올바른괄호.solution("(()(")
        XCTAssertTrue(value == true, "\(value) != \(true)")
        XCTAssertTrue(value2 == true, "\(value2) != \(true)")
        XCTAssertTrue(value3 == false, "\(value3) != \(false)")
        XCTAssertTrue(value4 == false, "\(value4) != \(false)")
    }

    func test방문길이() {
        let value = 방문길이.solution("ULURRDLLU")
        let value2 = 방문길이.solution("LULLLLLLU")
        let value3 = 방문길이.solution("RUDUDUDUDU")
        let result = 7
        XCTAssertTrue(value == result, "\(value) != \(result)")
        XCTAssertTrue(value2 == result, "\(value2) != \(result)")
        XCTAssertTrue(value3 == 2, "\(value3) != \(2)")
    }
    func test프린터() {
        let conditions = [프린터.solution([2, 1, 3, 2], 2), 프린터.solution([1, 1, 9, 1, 1, 1], 0)]
        let results = [1, 5]
        conditions.enumerated().forEach { index, value in
            let result = results[index]
            XCTAssertTrue(value == result, "\(value) != \(result)")
        }
    }

    func test모음사전() {
        XCTAssertTrue(모음사전.solution("AAAAE") == 6)
        XCTAssertTrue(모음사전.solution("AAAE") == 10)
        XCTAssertTrue(모음사전.solution("I") == 1563)
        XCTAssertTrue(모음사전.solution("EIO") == 1189)
    }
    func test다트게임() {
        XCTAssertTrue(다트게임.solution("1S2D*3T") == 37)
        XCTAssertTrue(다트게임.solution("1D2S#10S") == 9)
        XCTAssertTrue(다트게임.solution("1D2S0T") == 3)
        XCTAssertTrue(다트게임.solution("1S*2T*3S") == 23)
        XCTAssertTrue(다트게임.solution("1D#2S*3S") == 5)
        XCTAssertTrue(다트게임.solution("1T2D3D#") == -4)
        XCTAssertTrue(다트게임.solution("1D2S3T*") == 59)
    }
    func test비밀지도() {
        XCTAssertTrue(비밀지도.solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28]) == ["#####", "# # #", "### #", "#  ##", "#####"])
        XCTAssertTrue(비밀지도.solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10]) == ["######", "###  #", "##  ##", " #### ", " #####", "### # "])
    }
    
    func testX만큼간격이있는N개의숫자() {
        XCTAssertTrue(X만큼간격이있는N개의숫자.solution(2, 5) == [2,4,6,8,10])
        XCTAssertTrue(X만큼간격이있는N개의숫자.solution(4, 3) == [4,8,12])
        XCTAssertTrue(X만큼간격이있는N개의숫자.solution(-4, 2) == [-4, -8])
    }
    
    func test행렬의덧셈() {
        XCTAssertTrue(행렬의덧셈.solution([[1,2],[2,3]], [[3,4],[5,6]]) == [[4,6],[7,9]])
        XCTAssertTrue(행렬의덧셈.solution([[1],[2]], [[3],[4]]) == [[4],[6]])
    }
    
    func test핸드폰번호가리기() {
        XCTAssertTrue(핸드폰번호가리기.solution("01033334444") == "*******4444")
        XCTAssertTrue(핸드폰번호가리기.solution("0277778888") == "******8888")
    }
    
    func test하샤드수() {
        XCTAssertTrue(하샤드수.solution(10) == true)
        XCTAssertTrue(하샤드수.solution(11) == false)
        XCTAssertTrue(하샤드수.solution(12) == true)
        XCTAssertTrue(하샤드수.solution(13) == false)
    }
    
    func test평균구하기() {
        XCTAssertTrue(평균구하기.solution([1,2,3,4]) == 2.5)
        XCTAssertTrue(평균구하기.solution([5,5]) == 5)
    }
    
    func test콜라츠추측() {
        XCTAssertTrue(콜라츠추측.solution(6) == 8)
        XCTAssertTrue(콜라츠추측.solution(16) == 4)
        XCTAssertTrue(콜라츠추측.solution(626331) == -1)
    }
    
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
