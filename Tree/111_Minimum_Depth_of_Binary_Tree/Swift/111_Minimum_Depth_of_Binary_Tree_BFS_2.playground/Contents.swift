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
        var level = [root]
        while (true) {
            var nextLevel: [TreeNode] = []
            for node in level {
                if (node.left == nil && node.right == nil) {
                    return result
                }
                if let left = node.left {
                    nextLevel.append(left)
                }
                if let right = node.right {
                    nextLevel.append(right)
                }
            }
            result += 1
            level = nextLevel
        }
    }
}
