
class TreeNode {
    
    var val: Int
    
    var left: TreeNode?
    
    var right: TreeNode?
    
    init(val: Int) {
        self.val = val
    }
}

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else { return [] }
    var result = [[Int]]()
    var queue = [root]
    while queue.count > 0 {
        var currentLevel = [Int]()
        for item in queue {
            let removedValue = queue.removeFirst().val
            currentLevel.append(removedValue)
            if let left = item.left {
                queue.append(left)
            }
            if let right = item.right {
                queue.append(right)
            }
        }
        result.append(currentLevel)
    }
    return result
}

