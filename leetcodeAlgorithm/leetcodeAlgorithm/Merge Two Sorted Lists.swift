//
//  Merge Two Sorted Lists.swift
//  leetcodeAlgorithm
//
//  Created by 성주 on 2021/11/26.
//

import Foundation



class ListNode: Equatable, CustomStringConvertible {
    static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        lhs.val == rhs.val && lhs.next == rhs.next
    }

    var val: Int
    var next: ListNode?

    var description: String {
        var values = [Int]()
        var currentNode: ListNode? = self
        
        while let node = currentNode {
            values.append(node.val)
            currentNode = node.next
        }
        
        let description = values.map { String($0) }.joined(separator: ", ")
        return "[\(description)]"
    }

    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }

    static func generate(arr: [Int]) -> ListNode? {
        var node: ListNode?

        var last: ListNode?
        for num in arr {
            guard let _ = node else {
                node = ListNode(num)
                last = node
                continue
            }

            let newNode = ListNode(num)
            last?.next = newNode
            last = newNode
        }
        return node
    }
    
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
