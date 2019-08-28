class Solution {
    public int countCharacters(String[] words, String chars) {
        int[] charsCount = new int[26];
        int sum = 0;
        
        for (char ch : chars.toCharArray()) { 
            charsCount[ch - 'a']++;
        }
        
        for (String word : words) { 
            int[] tempCharsCount = Arrays.copyOf(charsCount, charsCount.length);
            int validCharsCount = 0;
            
            for (char ch: word.toCharArray()) { 
                if (tempCharsCount[ch - 'a'] > 0) { 
                    tempCharsCount[ch - 'a']--;
                    validCharsCount++;
                }
            }
            
            if (validCharsCount == word.length()) { 
                sum += word.length();
            }
        }
        
        return sum;
    }
}