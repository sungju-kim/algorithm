import Foundation


func p203(_ head: ListNode?, _ val: Int) -> ListNode? {
    let new: ListNode = ListNode(0, head)
    var temp = head
    while temp?.next != nil {
        if temp?.next?.val != val {
            temp = temp?.next
            continue
        }
        temp?.next = temp?.next?.next
    }
    if temp?.next?.val == val {
        temp?.next = nil
    }
    if new.next?.val == val {
        new.next = new.next?.next
    }
    return new.next
}



