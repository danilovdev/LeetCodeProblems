import Foundation

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
    func increasingBST(_ root: TreeNode?) -> TreeNode? {
        var array: [Int] = [] // create empty array for filling it with numbers
        inOrder(root, &array) // in order tree traversal
        let head = TreeNode(0) // dummy head pointer
        var current: TreeNode? = head // current item pointer
        for item in array {
            current?.right = TreeNode(item) // create right child
            current = current?.right // move pointer to next
        }
        return head.right // return root of tree
    }
    
    private func inOrder(_ root: TreeNode?, _ array: inout [Int]) {
        guard let root = root else { return }
        inOrder(root.left, &array)
        array.append(root.val)
        inOrder(root.right, &array)
    }
}
