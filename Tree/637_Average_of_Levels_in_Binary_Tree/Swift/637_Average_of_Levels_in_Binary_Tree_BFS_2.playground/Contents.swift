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
            let levelCount = array.count
            var sum = 0.0
            for i in 0..<levelCount {
                let item = array.removeFirst()
                sum += Double(item.val)
                if let left = item.left {
                    array.append(left)
                }
                if let right = item.right {
                    array.append(right)
                }
            }
            result.append(sum/Double(levelCount))
        }
        return result
    }
}
