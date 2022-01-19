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
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var sum: [Double] = []
        var count: [Int] = []
        var result: [Double] = []
        guard let root = root else { return result }
        dfs(root, 0, &sum, &count)
        for i in 0..<sum.count {
            result.append(sum[i]/Double(count[i]))
        }
        return result
    }
    
    private func dfs(_ root: TreeNode?, _ level: Int, _ sum: inout [Double], _ count: inout [Int]) {
        guard let root = root else { return }
        if level == sum.count {
            sum.append(Double(root.val))
            count.append(1)
        } else {
            sum[level] = sum[level] + Double(root.val)
            count[level] = count[level] + 1
        }
        dfs(root.left, level + 1, &sum, &count)
        dfs(root.right, level + 1, &sum, &count)
    }
}
