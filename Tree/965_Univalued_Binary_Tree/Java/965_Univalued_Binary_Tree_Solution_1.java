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
    List<Integer> values = new ArrayList();
    
    private void dfs(TreeNode node) { 
        if (node != null) { 
            values.add(node.val);
            dfs(node.left);
            dfs(node.right);
        }
    }
    
    public boolean isUnivalTree(TreeNode root) {
        dfs(root);
        for (int value : values) { 
            if (value != values.get(0)) { 
                return false;
            }
        }
        return true;
    }
}