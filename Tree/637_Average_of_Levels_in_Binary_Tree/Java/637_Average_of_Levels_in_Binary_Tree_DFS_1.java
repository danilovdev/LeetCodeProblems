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
    final class Data { 
        double sum;
        int count;
        Data(double sum, int count) { 
            this.sum = sum;
            this.count = count;
        }
    }
    
    public List<Double> averageOfLevels(TreeNode root) {
        List<Double> result = new ArrayList();
        if (root == null) { return result; }
        List<Data> data = new ArrayList();
        dfs(root, 0, data);
        for (Data item: data) { 
            result.add(item.sum/(double)item.count);
        }
        return result;
    }
    
    private void dfs(TreeNode root, int level, List<Data> data) { 
        if (root == null) { return; }
        if (level == data.size()) { 
            data.add(new Data((double)root.val, 1));
        } else { 
            data.get(level).sum += (double)root.val;
            data.get(level).count += 1;
        }
        dfs(root.left, level + 1, data);
        dfs(root.right, level + 1, data);
    }
}