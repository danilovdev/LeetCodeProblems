
func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
    let rows = obstacleGrid.count
    guard rows > 0 else { return 0 }
    let cols = obstacleGrid[0].count
    guard cols > 0 else { return 0 }
    
    guard obstacleGrid[0][0] != 1 && obstacleGrid[rows - 1][cols - 1] != 1 else { return 0 }
    
    var dp = Array(repeating: Array(repeating: 0, count: cols), count: rows)
    dp[0][0] = 1
    
    for i in 1..<rows {
        if obstacleGrid[i][0] == 1 {
            dp[i][0] = 0
        } else {
            dp[i][0] = dp[i - 1][0]
        }
    }
    
    for i in 1..<cols {
        if obstacleGrid[0][i] == 1 {
            dp[0][i] = 0
        } else {
            dp[0][i] = dp[0][i - 1]
        }
    }
    
    for i in 1..<rows {
        for j in 1..<cols {
            if obstacleGrid[i][j] != 1 {
                dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
            }
        }
    }
    
    return dp[rows - 1][cols - 1]
}

assert(uniquePathsWithObstacles([[0,0,0],
                                 [0,1,0],
                                 [0,0,0]]) == 2, "Failed")
