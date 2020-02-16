import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

// Solution 1 - DFS
class Solution {
    
    private var values: [Int] = []
    
    private func dfs(_ node: TreeNode?) {
        if let node = node {
            values.append(node.val)
            dfs(node.left)
            dfs(node.right)
        }
    }
    
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        dfs(root)
        for val in values {
            if val != values[0] {
                return false
            }
        }
        return true
    }
}

// Solution 2 - Recursive 1
class Solution2 {
    
    private func isUnivalTree(_ node: TreeNode?, _ val: Int?) -> Bool {
        if let node = node, let val = val {
            return node.val == val &&
                isUnivalTree(node.left, val) &&
                isUnivalTree(node.right, val)
        } else {
            return true
        }
    }
    
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        return isUnivalTree(root, root?.val)
    }
}

// Solution 3 - Recursive 2
class Solution3 {
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        let leftCorrect = root?.left == nil ||
            (root?.left?.val == root?.val && isUnivalTree(root?.left))
        let rightCorrect = root?.right == nil ||
            (root?.right?.val == root?.val && isUnivalTree(root?.right))
        return leftCorrect && rightCorrect
    }
}

// Solution 4 - BFS
class Solution4 {
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        var queue: [TreeNode] = []
        if let root = root {
            queue.append(root)
            while (queue.count > 0) {
                let node = queue.removeFirst()
                if node.val != root.val {
                    return false
                }
                if let leftNode = node.left {
                    queue.append(leftNode)
                }
                if let rightNode = node.right {
                    queue.append(rightNode)
                }
            }
        }
        return true
    }
}
