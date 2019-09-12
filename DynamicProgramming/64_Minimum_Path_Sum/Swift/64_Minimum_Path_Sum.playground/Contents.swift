import Foundation

func minPathSum(_ grid: [[Int]]) -> Int {
    if grid.count == 0 || grid[0].count == 0 { return 0 }
    
    var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: grid[0].count), count: grid.count)
    
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            dp[i][j] += grid[i][j]
            if i > 0 && j > 0 {
                dp[i][j] += min(dp[i - 1][j], dp[i][j - 1])
            } else if i > 0 {
                dp[i][j] += dp[i - 1][j]
            } else if j > 0 {
                dp[i][j] += dp[i][j - 1]
            }
        }
    }
    
    return dp[dp.count - 1][dp[0].count - 1]
}

let grid = [
    [1,3,1],
    [1,5,1],
    [4,2,1]
]

assert(minPathSum(grid) == 7, "Failed")


