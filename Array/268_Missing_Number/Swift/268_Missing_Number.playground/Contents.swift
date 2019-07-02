
// 1 Solution Bit Manipulation
func missingNumber(_ nums: [Int]) -> Int {
    var missing = nums.count
    for i in 0..<nums.count {
        missing ^= i ^ nums[i]
    }
    return missing
}

assert(missingNumber([3, 0, 1]) == 2, "Failed")
assert(missingNumber([9,6,4,2,3,5,7,0,1]) == 8, "Failed")

// 2 Solution using Set
func missingNumber2(_ nums: [Int]) -> Int {
    let n = nums.count
    let fullSum = n * (n + 1) / 2
    let givenSum = nums.reduce(0, +)
    return fullSum - givenSum
}

assert(missingNumber2([3, 0, 1]) == 2, "Failed")
assert(missingNumber2([9,6,4,2,3,5,7,0,1]) == 8, "Failed")


// 3 Solution using SwapAt
func missingNumber3(_ nums: [Int]) -> Int {
    var copy = nums
    let n = copy.count
    for i in 0..<n {
        while copy[i] != i && copy[i] != n {
            copy.swapAt(i, copy[i])
        }
    }
    
    for i in 0..<n {
        if copy[i] == n {
            return i
        }
    }
    
    return n
}

assert(missingNumber3([3, 0, 1]) == 2, "Failed")
assert(missingNumber3([9,6,4,2,3,5,7,0,1]) == 8, "Failed")
