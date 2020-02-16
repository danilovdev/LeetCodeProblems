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
    public boolean isUnivalTree(TreeNode root) {
        boolean leftCorrect = root.left == null || 
            (root.left.val == root.val && isUnivalTree(root.left));
        boolean rightCorrect = root.right == null ||
            (root.right.val == root.val && isUnivalTree(root.right));
        return leftCorrect && rightCorrect;
    }
}