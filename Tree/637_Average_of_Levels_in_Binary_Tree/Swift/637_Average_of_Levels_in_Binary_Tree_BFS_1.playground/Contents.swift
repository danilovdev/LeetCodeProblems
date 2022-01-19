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
        var result: [Double] = []
        guard let root = root else { return result }
        var array: [TreeNode] = [root]
        while (!array.isEmpty) {
            var nextLevel: [TreeNode] = []
            var sum = 0
            for item in array {
                sum += item.val
                if let left = item.left {
                    nextLevel.append(left)
                }
                if let right = item.right {
                    nextLevel.append(right)
                }
            }
            result.append(Double(sum)/Double(array.count))
            array = nextLevel
        }
        return result
    }
}
