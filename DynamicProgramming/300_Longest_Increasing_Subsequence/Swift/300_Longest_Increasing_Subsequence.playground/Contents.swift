func lengthOfLIS(_ nums: [Int]) -> Int {
    let n = nums.count
    guard n > 0 else { return 0 }
    guard n > 1 else { return 1 }
    var T = Array(repeating: 1, count: n)
    for i in 1..<n {
        for j in 0..<i {
            if nums[j] < nums[i] {
                T[i] = max(T[i], T[j] + 1)
            }
        }
    }
    var max = T[0]
    for i in T {
        if i > max {
            max = i
        }
    }
    return max
}

assert(lengthOfLIS([10,9,2,5,3,7,101,18]) == 4, "Failed")
