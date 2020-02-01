class Solution {
    public int search(int[] nums, int target) {
        if (nums == null || nums.length == 0) { 
            return -1;
        }
        int result = Arrays.binarySearch(nums, target);
        return result < 0 ? -1 : result;
    }
}