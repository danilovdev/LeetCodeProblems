class Solution {
    public boolean uniqueOccurrences(int[] arr) {
        Map<Integer, Integer> table = new HashMap();
        for (int number : arr) { 
            table.put(number, table.getOrDefault(number, 0) + 1);
        }
        
        Map<Integer, Boolean> table2 = new HashMap();
        for (int number : table.values()) { 
            if (table2.get(number) != null) { 
                return false;
            } else { 
                table2.put(number, true);
            }
        }
        return true;
    }
}