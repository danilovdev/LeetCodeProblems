class Solution {
    public int firstUniqChar(String s) {
        int answer = -1;
        for (char ch : s.toCharArray()) { 
            if (s.indexOf(ch) == s.lastIndexOf(ch)) { 
                return s.indexOf(ch);
            }
        }
        return -1;
    }
}