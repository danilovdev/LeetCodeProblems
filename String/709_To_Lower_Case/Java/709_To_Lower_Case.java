class Solution {
    public String toLowerCase(String str) {
        if (str == null || str.length() == 0) { 
            return str;
        }
        
        StringBuilder sb = new StringBuilder();
        for (char ch : str.toCharArray()) { 
            sb.append(ch >= 'A' && ch <= 'Z' ? (char)(ch + 32) : ch); 
        }
        
        return sb.toString();
    }
}