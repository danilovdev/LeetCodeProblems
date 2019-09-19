
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func isPalindrome(_ head: ListNode?) -> Bool {
    if (head == nil || head?.next == nil) {
        return true
    }
    var stack: [Int] = []
    var slow: ListNode? = head
    var fast: ListNode? = head
    while fast != nil && fast?.next != nil {
        stack.append(slow!.val)
        slow = slow?.next
        fast = fast?.next?.next
    }
    if fast != nil {
        slow = slow?.next
    }
    while slow != nil {
        if stack.popLast() != slow!.val {
            return false
        }
        slow = slow?.next
    }
    return true
}
