/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode(int x) { val = x; }
 * }
 */
class Solution {
    
    public TreeNode convertArrayToBST(int[] nums, int left, int right) { 
        if (left > right) { 
            return null;
        }
        int middle = left + (right - left) / 2;
        TreeNode node = new TreeNode(nums[middle]);
        node.left = convertArrayToBST(nums, left, middle - 1);
        node.right = convertArrayToBST(nums, middle + 1, right);
        return node;
    }
    
    public TreeNode sortedArrayToBST(int[] nums) {
        if (nums == null || nums.length == 0) { 
            return null;
        }
        TreeNode node = convertArrayToBST(nums, 0, nums.length - 1);
        return node;
    }
}