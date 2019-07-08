
func uniquePaths(_ m: Int, _ n: Int) -> Int {
    var result = Array(repeating: Array(repeating: 0, count: n), count: m)
    for i in 0..<m {
        result[i][0] = 1
    }
    for i in 0..<n {
        result[0][i] = 1
    }
    for i in 1..<m {
        for j in 1..<n {
            result[i][j] =  result[i - 1][j] + result[i][j - 1]
        }
    }
    return result[m - 1][n - 1]
}

assert(uniquePaths(3, 2) == 3, "Failed")
assert(uniquePaths(7, 3) == 28, "Failed")
