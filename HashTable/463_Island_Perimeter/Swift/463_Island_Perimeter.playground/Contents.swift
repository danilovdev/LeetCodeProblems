import Foundation

func getIslandPerimeter(_ grid: [[Int]]) -> Int {
    guard grid.count > 0, grid[0].count > 0 else { return 0 }
    
    var result = 0
    
    for i in 0..<grid.count {
        for j in 0..<grid[0].count {
            if grid[i][j] == 1 {
                result += 4
                
                if i > 0 && grid[i - 1][j] == 1 {
                    result -= 2
                }
                
                if j > 0 && grid[i][j - 1] == 1 {
                    result -= 2
                }
            }
        }
    }
    
    return result
}

let grid = [
    [0,1,0,0],
    [1,1,1,0],
    [0,1,0,0],
    [1,1,0,0]
]

let expectedResult = 16

assert(getIslandPerimeter(grid) == expectedResult, "Failed")
