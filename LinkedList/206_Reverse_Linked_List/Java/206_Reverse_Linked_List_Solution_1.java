/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) { val = x; }
 * }
 */
class Solution {
    public ListNode reverseList(ListNode head) {
        ListNode current = head;
        ListNode prev = null;
        while (current != null) {
            ListNode next = current.next; // save next pointer
            current.next = prev; // make reversing
            prev = current; // move prev forward
            current = next; // move current forward
        }
        return prev;
    }
}