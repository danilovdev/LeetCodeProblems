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

func dfs(_ root: TreeNode, _ path: inout String, _ result: inout [String]) {
    path += String(root.val)
    if root.left == nil && root.right == nil {
        result.append(path)
    }
    if root.left != nil {
        var path = path + "->"
        dfs(root.left!, &path, &result)
    }
    if root.right != nil {
        var path = path + "->"
        dfs(root.right!, &path, &result)
    }
}

func binaryTreePath(_ root: TreeNode?) -> [String] {
    var result: [String] = []
    guard let root = root else {
        return result
    }
    var path = ""
    dfs(root, &path, &result)
    return result
}

var root = TreeNode(1)

var secondRight = TreeNode(5)
var firstLeft = TreeNode(2)
firstLeft.right = secondRight

var firstRight = TreeNode(3)

root.left = firstLeft
root.right = firstRight

binaryTreePath(root) // "1->2->5", "1->3"
