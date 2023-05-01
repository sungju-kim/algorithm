//
//  Problem.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2023/05/01.
//

import Foundation

protocol Problem {
    associatedtype Input
    associatedtype Output
    func solution(_ input: Input) -> Output
}
