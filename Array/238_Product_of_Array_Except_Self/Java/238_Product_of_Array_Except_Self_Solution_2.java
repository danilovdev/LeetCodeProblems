class Solution {
    public int[] productExceptSelf(int[] nums) {
        int n = nums.length;
        int[] products = new int[n];
        products[0] = 1;
        
        for (int i = 1; i < n; i++) { 
            products[i] = nums[i - 1] * products[i - 1];
        }
        
        int R = 1;
        for (int i = (n - 1); i >= 0; i--) { 
            products[i] = products[i] * R;
            R = R * nums[i];
        }
        
        return products;
    }
}