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

// 1. Iterative solution
func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    var queue: [TreeNode] = []
    queue.append(root)
    while !queue.isEmpty {
        let node = queue.removeFirst()
        let temp = node.left
        node.left = node.right
        node.right = temp
        if let left = node.left {
            queue.append(left)
        }
        if let right = node.right {
            queue.append(right)
        }
    }
    return root
}

// 2. Recursive solution
func invertTreeRecursive(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    let right = invertTreeRecursive(root.right)
    let left = invertTreeRecursive(root.left)
    root.left = right
    root.right = left
    return root
}
