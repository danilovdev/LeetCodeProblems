class Solution {
    public int firstUniqChar(String s) {
        int[] charsCount = new int[26];
        for (char ch : s.toCharArray()) { 
            charsCount[ch - 'a'] = charsCount[ch - 'a'] + 1;
        }
        
        int index = 0;
        for (char ch : s.toCharArray()) { 
            if (charsCount[ch - 'a'] == 1) { 
                return index;
            }
            index += 1;
        }
        
        return -1;
    }
}