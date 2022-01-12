//
//  removeDuplicatsFromSortedList.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2022/01/12.
//

class DeleteDuplicatesSolution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head?.val == nil {return nil}
        var node = head
        while node?.next != nil {
            if node?.val == node?.next?.val{
                var nextNode = node?.next
                while node?.val == nextNode?.val {
                    nextNode = nextNode?.next
                }
                node?.next = nextNode
            }
            node = node?.next
        }
        return head
    }
}
let listnode = ListNode.init(1, ListNode.init(1, ListNode.init(1, ListNode.init(3, ListNode.init(3)))))
let deleteDuplicates = DeleteDuplicatesSolution()
