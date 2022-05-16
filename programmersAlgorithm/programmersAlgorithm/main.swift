import Foundation

// 나머지가 1이 되는 수 찾기
assert(searchNumSolution(10) == 3 )
assert(searchNumSolution(12) == 11 )

// 신고 결과 받기
assert(badUserSolution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2) == [2,1,1,0] )
assert(badUserSolution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3) == [0,0] )

