class Solution {
    private int binarySearch(int[] nums, int left, int right, int target) { 
        if (left <= right) { 
            int mid = left + (right - left) / 2;
            if (target < nums[mid]) { 
                return binarySearch(nums, left, mid - 1, target);
            } else if (target > nums[mid]) { 
                return binarySearch(nums, mid + 1, right, target);
            } else { 
                return mid;
            }
        }
        return -1;
    }
    
    public int search(int[] nums, int target) {
        int left = 0;
        int right = nums.length - 1;
        return binarySearch(nums, left, right, target);
    }
}