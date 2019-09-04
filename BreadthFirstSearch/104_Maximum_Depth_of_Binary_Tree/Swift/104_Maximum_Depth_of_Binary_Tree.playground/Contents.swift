import Foundation

public class TreeNode {
    
    public var val: Int
    
    public var left: TreeNode?
    
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val = val
    }
}

func maxDepath(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    var count = 0
    var queue: [TreeNode] = []
    queue.append(root)
    while queue.count > 0 {
        count += 1
        for _ in 0..<queue.count {
            let node = queue.removeFirst()
            if node.left != nil {
                 queue.append(node.left!)
            }
            if node.right != nil {
                queue.append(node.right!)
            }
        }
    }
    return count
}
