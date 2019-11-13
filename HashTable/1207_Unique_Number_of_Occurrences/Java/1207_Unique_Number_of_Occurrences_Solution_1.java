class Solution {
    public boolean uniqueOccurrences(int[] arr) {
        Map<Integer, Integer> table = new HashMap();
        for (int number : arr) { 
            table.put(number, table.getOrDefault(number, 0) + 1);
        }
        
        Set<Integer> set = new HashSet(table.values());
        
        boolean result = set.size() == table.size();
        
        return result;
    }
}