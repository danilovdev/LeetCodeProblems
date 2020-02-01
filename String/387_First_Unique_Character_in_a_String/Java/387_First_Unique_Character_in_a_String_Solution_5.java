class Solution {
    public int firstUniqChar(String s) {
        Map<Character, List<Integer>> table = new HashMap();
        
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            List<Integer> list = table.getOrDefault(ch, Arrays.asList(-1, 0));
            int index = list.get(0) == -1 ? i : list.get(0);
            int count = list.get(1) + 1;
            table.put(ch, Arrays.asList(index, count));
        }
        
        int minIndex = Integer.MAX_VALUE;
        for (Character ch : table.keySet()) { 
            List<Integer> list = table.get(ch);
            int index = list.get(0);
            int count = list.get(1);
            if (count == 1 && index < minIndex) { 
                minIndex = index;
            }
        }
        
        return minIndex == Integer.MAX_VALUE ? -1 : minIndex;
    }
}