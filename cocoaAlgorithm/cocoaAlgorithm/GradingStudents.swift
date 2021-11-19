//
//  GradingStudents.swift
//  cocoaAlgorithm
//
//  Created by 성주 on 2021/11/19.
//

import Foundation

struct GradingStudents {
    let gradesCount = Int(readLine()!)!
    func gradingStudents(grades: [Int]) -> [Int] {
        func roundOrNot(_ grade : Int) -> Int {
            let roundedInt = Int((Float(grade)/5).rounded(.up))*5
            let difference = roundedInt - grade
            if roundedInt < 40{
                return grade
            }else if difference.magnitude >= 3{
                return grade
            }else{
                return roundedInt
            }
        }
        let newGrade = grades.map{roundOrNot($0)}
        return newGrade
    }
    func buildGradeArray() -> [Int] {
        var grades = [Int]()
        for _ in 1...gradesCount {
            guard let gradesItem = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
            else { fatalError("Bad input") }
            grades.append(gradesItem)
        }
        return grades
    }
    func printResult() {
        print(gradingStudents(grades: buildGradeArray()))
    }
}
let gradingstudents = GradingStudents()
