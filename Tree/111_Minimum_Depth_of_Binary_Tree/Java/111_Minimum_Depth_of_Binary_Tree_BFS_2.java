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
        Queue<TreeNode> queue = new LinkedList();
        queue.offer(root);
        while (!queue.isEmpty()) { 
            int size = queue.size();
            for (int i = 0; i < size; i++) { 
                TreeNode node = queue.poll();
                if (node.left == null && node.right == null) { 
                    return result;
                }
                if (node.left != null) { 
                    queue.offer(node.left);
                }
                if (node.right != null) { 
                    queue.offer(node.right);
                }
            }
            result += 1;
        }
        return result;
    }
}