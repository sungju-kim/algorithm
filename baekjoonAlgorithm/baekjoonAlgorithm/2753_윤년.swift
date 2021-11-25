//
//  2753_윤년.swift
//  baekjoonAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p2753(){
    let input = Int(readLine()!)!
    if ((input % 4 == 0) && (input % 100 != 0 )) || ((input % 4 == 0) && (input % 400 == 0)){
        print("1")
    }else{
        print("0")
    }
    
}
