class Solution {
    
    private void fill(int[][] image, int sr, int sc, int prevColor, int newColor) { 
        if (sr < 0 || sc < 0 || sr >= image.length || sc >= image[0].length || image[sr][sc] != prevColor) { 
            return;
        }
        image[sr][sc] = newColor;
        
        fill(image, sr - 1, sc, prevColor, newColor);
        fill(image, sr + 1, sc, prevColor, newColor);
        fill(image, sr, sc - 1, prevColor, newColor);
        fill(image, sr, sc + 1, prevColor, newColor);
    }
    
    public int[][] floodFill(int[][] image, int sr, int sc, int newColor) {
        if (image[sr][sc] == newColor) { 
            return image;
        }
        int prevColor = image[sr][sc];
        fill(image, sr, sc, prevColor, newColor);
        return image;
    }
}