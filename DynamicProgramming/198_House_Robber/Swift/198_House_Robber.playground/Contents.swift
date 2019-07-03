
// 1 Solution with dp array
func rob(_ nums: [Int]) -> Int {
    let n = nums.count
    guard n > 0 else { return 0 }
    guard n > 1 else { return nums[0] }
    var dp = Array(repeating: 0, count: n)
    dp[0] = nums[0]
    dp[1] = max(nums[0], nums[1])
    for i in 2..<n {
        dp[i] = max(dp[i - 2] + nums[i], dp[i - 1])
    }
    return dp[n - 1]
}

assert(rob([1, 2, 3, 1]) == 4, "Failed")
assert(rob([2,7,9,3,1]) == 12, "Failed")

// 2 Solution DP with 2 vairables: inclusive and exclusive
func rob2(_ nums: [Int]) -> Int {
    let n = nums.count
    guard n > 0 else { return 0 }
    guard n > 1 else { return nums[0] }
    var excl = 0
    var incl = nums[0]
    for i in 1..<n {
        let temp = incl
        incl = max(nums[i] + excl, incl)
        excl = temp
    }
    return incl
}

assert(rob2([1, 2, 3, 1]) == 4, "Failed")
assert(rob2([2,7,9,3,1]) == 12, "Failed")

