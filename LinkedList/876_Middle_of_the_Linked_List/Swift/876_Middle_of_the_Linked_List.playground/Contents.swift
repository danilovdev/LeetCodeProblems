import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    
    // Solution 1
    func middleNode1(_ head: ListNode?) -> ListNode? {
        var current = head
        var length = 0
        while current != nil {
            current = current?.next
            length += 1
        }
        
        current = head
        for _ in 0..<length / 2 {
            current = current?.next
        }
        
        return current
    }
    
    // Solution 2
    func middleNode2(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}


