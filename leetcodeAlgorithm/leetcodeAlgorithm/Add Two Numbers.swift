//
//  Add Two Numbers.swift
//  leetcodeAlgorithm
//
//  Created by dale on 2023/09/02.
//

import Foundation

struct AddTwoNumbers: Problem {

    typealias Input = (ListNode?, ListNode?)
    typealias Output = ListNode?

    func solution(_ input: (ListNode?, ListNode?)) -> ListNode? {
        var resultNode: ListNode? = nil
        var carry = 0

        var node1 = input.0
        var node2 = input.1
        var current: ListNode? = nil

        while node1 != nil || node2 != nil || carry > 0 {
            let val1 = node1?.val ?? 0
            let val2 = node2?.val ?? 0

            let sum = val1 + val2 + carry
            carry = sum / 10

            let newNode = ListNode(sum % 10)

            if resultNode == nil {
                resultNode = newNode
                current = newNode
            } else {
                current?.next = newNode
                current = newNode
            }

            node1 = node1?.next
            node2 = node2?.next
        }

        return resultNode
    }

}
