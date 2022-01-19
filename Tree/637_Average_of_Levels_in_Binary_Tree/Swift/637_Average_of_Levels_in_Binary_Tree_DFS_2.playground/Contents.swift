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
    struct Data {
        let sum: Double
        let count: Int
    }
    
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        guard let root = root else { return [] }
        var array: [Data] = []
        dfs(root, 0, &array)
        return array.map { $0.sum/Double($0.count) }
    }
    
    private func dfs(_ root: TreeNode?, _ level: Int, _ array: inout [Data]) {
        guard let root = root else { return }
        if level == array.count {
            array.append(Data(sum: Double(root.val), count: 1))
        } else {
            array[level] = Data(
                sum: array[level].sum + Double(root.val),
                count: array[level].count + 1
            )
        }
        dfs(root.left, level + 1, &array)
        dfs(root.right, level + 1, &array)
    }
}
