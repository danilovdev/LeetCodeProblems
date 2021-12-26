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
    public TreeNode increasingBST(TreeNode root) {
        if (root == null) { return null; }
        List<Integer> list = new ArrayList();
        inOrder(root, list);
        TreeNode head = new TreeNode(0);
        TreeNode current = head;
        for (int item: list) { 
            current.right = new TreeNode(item);
            current = current.right;
        }
        return head.right;
    }
    
    private void inOrder(TreeNode root, List<Integer> list) { 
        if (root == null) { return; }
        inOrder(root.left, list);
        list.add(root.val);
        inOrder(root.right, list);
    }
}