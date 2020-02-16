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
        Queue<TreeNode> queue = new LinkedList();
        queue.offer(root);
        while (!queue.isEmpty()) { 
            TreeNode node = queue.poll();
            if (node.val != root.val) { 
                return false;
            }
            if (node.left != null) { 
                queue.offer(node.left);
            }
            if (node.right != null) { 
                queue.offer(node.right);
            }
        }
        return true;
    }
}