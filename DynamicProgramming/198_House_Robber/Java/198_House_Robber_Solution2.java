class Solution {
    public int rob(int[] nums) {
        if (nums == null || nums.length == 0) { 
            return 0;
        }
        if (nums.length == 1) { 
            return nums[0];
        }
        int prevMaxSum = nums[0];
        int curMaxSum = Math.max(nums[0], nums[1]);
        for (int i = 2; i < nums.length; i++) { 
            int nextMaxSum = Math.max(nums[i] + prevMaxSum, curMaxSum);
            prevMaxSum = curMaxSum;
            curMaxSum = nextMaxSum;
        }
        return curMaxSum;
    }
}