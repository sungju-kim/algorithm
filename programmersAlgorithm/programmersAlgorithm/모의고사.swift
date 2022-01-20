//
//  모의고사.swift
//  programmersAlgorithm
//
//  Created by 성주 on 2021/11/12.
//

import Foundation

func mockExam(_ answers:[Int]) -> [Int] {
    let person1 = [1,2,3,4,5]
    let person2 = [2,1,2,3,2,4,2,5]
    let person3 = [3,3,1,1,2,2,4,4,5,5]
    let persons : [[Int]] = [person1,person2,person3]
    let personNum : [Int] = [1, 2, 3]
    var score : [Int] = [0, 0, 0]
    var answerNum = 0
    for i in answers {
        for person in persons{
            let indexOfPerson = persons.firstIndex(of: person)!
            if i == person[answerNum % person.count] {
                score[indexOfPerson] += 1
            }
        }
        answerNum += 1
    }
    let zipping = zip(personNum, score)
    let maxResult = zipping.max(by: {$0.1 < $1.1})?.1 ?? 0
    let leaders = zipping.filter {$0.1 >= maxResult}.map {$0.0}
    return leaders.sorted()
}
