//
//  Merge Two Sorted Lists.swift
//  leetcodeAlgorithm
//
//  Created by 성주 on 2021/11/26.
//

import Foundation



public class ListNode {
public var val: Int
public var next: ListNode?
public init() { self.val = 0; self.next = nil; }
public init(_ val: Int) { self.val = val; self.next = nil; }
public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
 
class SolutionMergeTwoLists {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard let li1 = list1 else {return list2}
        guard let li2 = list2 else {return list1}
        guard li1.val < li2.val else {
            li2.next = mergeTwoLists(li1,li2.next)
            return li2
        }
        li1.next = mergeTwoLists(li1.next, li2)
        return li1
    }
    
}


let solutionMergeTwoLists = SolutionMergeTwoLists()
