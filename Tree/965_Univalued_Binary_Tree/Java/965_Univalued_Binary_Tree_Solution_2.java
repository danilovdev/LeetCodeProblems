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
    
    private boolean isUnivalTree(TreeNode node, int val) { 
        if (node == null) { 
            return true;
        }
        return node.val == val && 
            isUnivalTree(node.left, val) &&
            isUnivalTree(node.right, val);
    }
    
    public boolean isUnivalTree(TreeNode root) {
        return isUnivalTree(root, root.val);
    }
}