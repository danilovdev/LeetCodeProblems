class Solution {
    public int[] sortArrayByParity(int[] A) {
        int counter = 0;
        for (int i = 0; i < A.length; i++) {
            if (A[i] % 2 == 0) { 
                int temp = A[counter];
                A[counter] = A[i];
                A[i] = temp;
                counter++;
            }
        }
        return A;
    }
}