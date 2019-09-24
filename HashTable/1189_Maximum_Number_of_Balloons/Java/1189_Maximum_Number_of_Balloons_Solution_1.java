class Solution {
    public int maxNumberOfBalloons(String text) {
        int[] charsCount = new int[26];
        for (char ch : text.toCharArray()) {
            charsCount[ch - 'a'] += 1;
        }
        
        int result = charsCount[1]; //b
        result = Math.min(result, charsCount[0]); // a
        result = Math.min(result, charsCount[11] / 2); // l
        result = Math.min(result, charsCount[14] / 2); // o
        result = Math.min(result, charsCount[13]); // n
        return result;
    }
}