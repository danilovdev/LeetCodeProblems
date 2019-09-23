import Foundation

private func fill(_ image: inout [[Int]], _ sr: Int, _ sc: Int, _ prevColor: Int, _ newColor: Int) {
    if sr < 0 || sc < 0 || sr >= image.count || sc >= image[0].count || image[sr][sc] != prevColor {
        return
    }
    
    image[sr][sc] = newColor
    
    fill(&image, sr - 1, sc, prevColor, newColor)
    fill(&image, sr + 1, sc, prevColor, newColor)
    fill(&image, sr, sc - 1, prevColor, newColor)
    fill(&image, sr, sc + 1, prevColor, newColor)
}

func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
    if image[sr][sc] == newColor {
        return image
    }
    
    var image = image
    
    let prevColor = image[sr][sc]
    fill(&image, sr, sc, prevColor, newColor)
    return image
}

assert(floodFill([[1,1,1],[1,1,0],[1,0,1]], 1, 1, 2) == [[2,2,2],[2,2,0],[2,0,1]], "Failed")

