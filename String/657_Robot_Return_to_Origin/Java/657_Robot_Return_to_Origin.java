class Solution {
    public boolean judgeCircle(String moves) {
        int horizontal = 0;
        int vertical = 0;
        for (char move : moves.toCharArray()) {
            switch (move) { 
                case 'L':
                    horizontal -= 1;
                    break;
                case 'R':
                    horizontal += 1;
                    break;
                case 'U':
                    vertical += 1;
                    break;
                case 'D':
                    vertical -= 1;
                    break;
            }
        }
        return horizontal == 0 && vertical == 0;
    }
}