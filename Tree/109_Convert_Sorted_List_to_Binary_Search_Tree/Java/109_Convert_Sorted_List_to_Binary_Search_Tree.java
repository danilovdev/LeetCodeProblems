/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
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
    public TreeNode sortedListToBST(ListNode head) {
        if (head == null) { return null; }
        List<Integer> list = new ArrayList();
        while (head != null) { 
            list.add(head.val);
            head = head.next;
        }
        return createBST(list, 0, list.size() - 1);
    }
    
    private TreeNode createBST(List<Integer> list, int left, int right) { 
        if (left > right) { return null; }
        int middle = left + (right - left) / 2;
        int value = list.get(middle);
        TreeNode root = new TreeNode(value);
        root.left = createBST(list, left, middle - 1);
        root.right = createBST(list, middle + 1, right);
        return root;
    }
}