class Solution {
    public int maxNumberOfBalloons(String text) {
        Map<Character, Integer> table = new HashMap<Character, Integer>();
        for (char ch :  text.toCharArray()) { 
            table.put(ch, table.getOrDefault(ch, 0) + 1);
        }
        
        int result = table.getOrDefault('b', 0); //b
        result = Math.min(result, table.getOrDefault('a', 0)); // a
        result = Math.min(result, table.getOrDefault('l', 0) / 2); // l
        result = Math.min(result, table.getOrDefault('o', 0) / 2); // o
        result = Math.min(result, table.getOrDefault('n', 0)); // n
        return result;
    }
}