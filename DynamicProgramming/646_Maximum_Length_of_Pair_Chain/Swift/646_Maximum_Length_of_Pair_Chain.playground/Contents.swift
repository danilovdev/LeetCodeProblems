
func findLongestChain(_ pairs: [[Int]]) -> Int {
    let n = pairs.count
    guard n > 0 else { return 0 }
    let pairs = pairs.sorted(by: { p1, p2 in
        p1[0] < p2[0]
    })
    var result = 1
    var dp = Array(repeating: 1, count: n)
    for i in 1..<n {
        for j in 0..<i {
            if pairs[j][1] < pairs[i][0] {
                dp[i] = max(dp[i], dp[j] + 1)
            }
        }
        if dp[i] > result {
            result = dp[i]
        }
    }
    return result
}

assert(findLongestChain([[1,2], [2,3], [3,4]]) == 2, "Failed")
