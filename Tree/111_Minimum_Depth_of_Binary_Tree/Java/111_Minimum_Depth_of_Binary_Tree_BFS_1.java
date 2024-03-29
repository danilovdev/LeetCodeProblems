/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode() {}
 *     TreeNode(int val) { this.val = val; }
 *     TreeNode(int val, TreeNode left, TreeNode right) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */
class Solution {
    public int minDepth(TreeNode root) {
        if (root == null) { return 0; }
        int result = 1;
        List<TreeNode> level = new ArrayList();
        level.add(root);
        while (true) { 
            List<TreeNode> nextLevel = new ArrayList();
            for (TreeNode node: level) { 
                if (node.left == null && node.right == null) { 
                    return result;
                }
                if (node.left != null) { 
                    nextLevel.add(node.left);
                }
                if (node.right != null) { 
                    nextLevel.add(node.right);
                }
            }
            result += 1;
            level = nextLevel;
        }
    }
}