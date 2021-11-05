//
//  p2920.swift
//  cocoaAlgorithm
//
//  Created by 성주 on 2021/11/05.
//

import Foundation

func p2920(){
    let line = readLine()!.components(separatedBy: " ").map{Int($0)!}
    var ascending = 0
    var descending = 0
    for i in 0...line.count-2 {
        if line[i]+1 == line[i+1]{
            ascending += 1
        }else if line[i]-1 == line[i+1]{
            descending += 1
        }
    }
    if ascending == 7{
        print("ascending")
    }else if descending == 7{
        print("descending")
    }else {
        print("mixed")
    }
}
 
