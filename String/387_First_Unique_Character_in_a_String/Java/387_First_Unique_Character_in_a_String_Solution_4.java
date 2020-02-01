class Solution {
    public int firstUniqChar(String s) {
        Map<Character, Integer> table = new HashMap();
        
        for (char ch : s.toCharArray()) { 
            table.put(ch, table.getOrDefault(ch, 0) + 1);
        }
        
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            if (table.get(ch) == 1) { 
                return i;
            }
        }
        
        return -1;
    }
}