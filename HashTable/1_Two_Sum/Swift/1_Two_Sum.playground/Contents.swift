func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [-1, -1]
    let count = nums.count
    guard count > 1 else { return result }
    var table: [Int: Int] = [:]
    for i in 0..<count {
        let other = target - nums[i]
        if let part = table[other] {
            result[0] = i
            result[1] = part
            return result
        }
        table[nums[i]] = i
    }
    return result
}

assert(twoSum([2, 7, 11, 15], 9) == [0, 1] ||
    twoSum([2, 7, 11, 15], 9) == [1, 0], "Failed")

