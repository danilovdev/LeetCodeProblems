class Solution {
    public int firstUniqChar(String s) {
        int[] charsCount = new int[26];
        for (char ch : s.toCharArray()) { 
            charsCount[ch - 'a'] = charsCount[ch - 'a'] + 1;
        }
        
        for (int i = 0; i < s.length(); i++) { 
            char ch = s.charAt(i);
            if (charsCount[ch - 'a'] == 1) { 
                return i;
            }
        }
        
        return -1;
    }
}