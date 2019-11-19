import Foundation

class TreeNode {
    
    var val: Int
    
    var left: TreeNode?
    
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
    }
}

func convertArrayToBST(_ nums: [Int], _ left: Int, _ right: Int) -> TreeNode? {
    if left > right {
        return nil
    }
    let middle = left + (right - left) / 2
    let node = TreeNode(nums[middle])
    node.left = convertArrayToBST(nums, left, middle - 1)
    node.right = convertArrayToBST(nums, middle + 1, right)
    return node
}

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    if nums.count == 0 {
        return nil
    }
    let node = convertArrayToBST(nums, 0, nums.count - 1)
    return node
}
