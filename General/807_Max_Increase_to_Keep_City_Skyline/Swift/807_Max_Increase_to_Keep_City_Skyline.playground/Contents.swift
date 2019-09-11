import Foundation

func maxIncreasingKeepingSkyline(_ grid: [[Int]]) -> Int {
    guard grid.count > 0, grid[0].count > 0 else { return 0 }
    
    let n = grid.count
    var maxRowValues: [Int] = Array(repeating: 0, count: n)
    var maxColumnValues: [Int] = Array(repeating: 0, count: n)
    var result = 0
    
    for i in 0..<n {
        for j in 0..<n {
            maxRowValues[i] = max(maxRowValues[i], grid[i][j])
            maxColumnValues[j] = max(maxColumnValues[j], grid[i][j])
        }
    }
    
    for i in 0..<n {
        for j in 0..<n {
            result += min(maxRowValues[i], maxColumnValues[j]) - grid[i][j]
        }
    }
    
    return result
}

let grid = [
    [3,0,8,4],
    [2,4,5,7],
    [9,2,6,3],
    [0,3,1,0]
]

assert(maxIncreasingKeepingSkyline(grid) == 35, "Failed")
