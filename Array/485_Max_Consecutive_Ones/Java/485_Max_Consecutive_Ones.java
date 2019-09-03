class Solution {
    public int findMaxConsecutiveOnes(int[] nums) {
        int prevMax = 0;
        int totalMax = 0;
        for (int num : nums) { 
            if (num == 1) { 
                prevMax += 1;
                totalMax = Math.max(prevMax, totalMax);
            } else { 
                prevMax = 0;
            }
        }
        return totalMax;
    }
}