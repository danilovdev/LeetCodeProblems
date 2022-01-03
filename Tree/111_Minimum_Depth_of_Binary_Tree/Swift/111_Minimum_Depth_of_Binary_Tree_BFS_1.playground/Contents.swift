import UIKit

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
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var result = 1
        var array = [root]
        while (array.count != 0) {
            for _ in 0..<array.count {
                let node = array.removeFirst()
                if (node.left == nil && node.right == nil) {
                    return result
                }
                if let left = node.left {
                    array.append(left)
                }
                if let right = node.right {
                    array.append(right)
                }
            }
            result += 1
        }
        return result
    }
}
