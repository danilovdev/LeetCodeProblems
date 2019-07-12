func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    guard nums.count > 0 else { return 0 }
    guard nums.count >= k else { return 0 }
    return nums.sorted()[nums.count - k]
}

assert(findKthLargest([3, 2, 1, 5, 6, 4], 2) == 5, "Failed")
assert(findKthLargest([3,2,3,1,2,4,5,5,6], 4) == 4, "Failed")

