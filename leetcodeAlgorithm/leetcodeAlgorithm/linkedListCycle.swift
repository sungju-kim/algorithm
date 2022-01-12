//
//  linkedListCycle.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2022/01/12.
//

class HasCycleSolution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var nodeA = head
        var nodeB = head?.next
        while nodeA?.next != nil {
            if nodeB?.next?.next == nil {
                return false
            }
            if nodeA === nodeB {
                return true
            }
            nodeA = nodeA?.next
            nodeB = nodeB?.next?.next
        }
        return false
    }
}
let cycleNode = ListNode.init(3, ListNode.init(2, ListNode.init(0, ListNode.init(-4))))
let hasCycle = HasCycleSolution()
