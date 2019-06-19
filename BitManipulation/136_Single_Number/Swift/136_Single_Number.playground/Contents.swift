import UIKit

// Bit manipulation solution
func findSingleNumber(_ nums: [Int]) -> Int {
    var result = 0
    for number in nums {
        result ^= number
    }
    return result
}

assert(findSingleNumber([2,2,1]) == 1, "Failed")
assert(findSingleNumber([4,1,2,1,2]) == 4, "Failed")

// Time Limit Exceeded - Array Solution - O(nˆ2)
func findSingleNumber2(_ nums: [Int]) -> Int {
    var array: [Int] = []
    for number in nums {
        if let index = array.firstIndex(of: number) {
            array.remove(at: index)
        } else {
            array.append(number)
        }
    }
    return array.first ?? 0
}

assert(findSingleNumber2([2,2,1]) == 1, "Failed")
assert(findSingleNumber2([4,1,2,1,2]) == 4, "Failed")

// Hash Table Solution
func findSingleNumber3(_ nums: [Int]) -> Int {
    var table: [Int: Int] = [:]
    for number in nums {
        if table[number] != nil {
            table[number] = nil
        } else {
            table[number, default: 0] += 1
        }
    }
    return table.first?.key ?? 0
}

assert(findSingleNumber3([2,2,1]) == 1, "Failed")
assert(findSingleNumber3([4,1,2,1,2]) == 4, "Failed")

// Math Solution
// 1. Sum of all numbers: a + a + b + c + c = 2a + 2c + b
// 2. Sum of unique numbers: a + b + c
// 3. Multiply by 2 unique sum: 2a + 2b + 2c
// 4. Subtract: 2a + 2b + 2c - (2a + 2c + b) = b
// 5 Formula: singleNumber = 2 * Sum(Set(nums)) - sum(nums)

func findSingleNumber4(_ nums: [Int]) -> Int {
    let setSum2 = 2 * Set(nums).reduce(0, +)
    let numsSum = nums.reduce(0, +)
    return setSum2 - numsSum
}

assert(findSingleNumber4([2,2,1]) == 1, "Failed")
assert(findSingleNumber4([4,1,2,1,2]) == 4, "Failed")
