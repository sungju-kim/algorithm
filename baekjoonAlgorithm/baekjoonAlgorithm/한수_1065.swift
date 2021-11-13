//
//  한수_1065.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/13.
//
func p1065() {
    let input = readLine() ?? "0"
    var count = 99
    guard let inputInt = Int(input) else {return}
    if inputInt <= 99 {
        print(inputInt)
    }else if inputInt > 99 && inputInt < 111{
        print(count)
    }else{
        for i in 111...inputInt {
            if (i / 100 - (i % 100)/10) == ((i % 100)/10 - i % 10){
                count += 1
            }
        }
        print(count)
    }
}


