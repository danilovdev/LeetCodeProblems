
import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func sortedListToBST(_ head: ListNode?) -> TreeNode? {
        guard let head = head else { return nil }
        var array: [Int] = []
        var current: ListNode? = head
        while (current != nil) {
            if let val = current?.val {
                array.append(val)
                current = current?.next
            }
        }
        return createBST(array, 0, array.count - 1)
    }
    
    private func createBST(_ array: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        if (left > right) { return nil }
        let middle = left + (right - left) / 2
        let value = array[middle]
        let root = TreeNode(value)
        root.left = createBST(array, left, middle - 1)
        root.right = createBST(array, middle + 1, right)
        return root
    }
}
