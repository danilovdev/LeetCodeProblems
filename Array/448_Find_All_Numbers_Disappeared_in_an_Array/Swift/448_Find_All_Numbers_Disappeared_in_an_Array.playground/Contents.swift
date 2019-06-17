import UIKit

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    guard nums.count > 0 else { return [] }
    var missingNumbers: [Int] = []
    let numsSet = Set(nums)
    
    for i in 1...nums.count {
        if !numsSet.contains(i) {
            missingNumbers.append(i)
        }
    }
    
    return missingNumbers
}

func findDisappearedNumbers2(_ nums: [Int]) -> [Int] {
    guard nums.count > 0 else { return [] }
    
    let fullSet = Set(1...nums.count)
    let numsSet = Set(nums)
    let missingNumbers = fullSet.symmetricDifference(numsSet)
    
    return Array(missingNumbers)
}

func findDisappearedNumbers3(_ nums: [Int]) -> [Int] {
    guard nums.count > 0 else { return [] }
    var nums = nums
    for number in nums {
        let index = number - 1
        if nums[index] > 0 {
            nums[index] = -nums[index]
        }
    }
    
    var missingNumbers: [Int] = []
    
    for i in 1...nums.count {
        let index = i - 1
        if nums[index] > 0 {
            missingNumbers.append(i)
        }
    }
    
    return missingNumbers
}

func findDisappearedNumbers4(_ nums: [Int]) -> [Int] {
    guard nums.count > 0 else { return [] }
    var nums = nums
    for i in 0..<nums.count {
        while nums[i] != i + 1, nums[i] != nums[nums[i] - 1] {
            nums.swapAt(i, nums[i] - 1)
        }
    }
    
    var missingNumbers: [Int] = []
    for i in 0..<nums.count {
        if nums[i] != i + 1 {
            missingNumbers.append(i + 1)
        }
    }
    
    return missingNumbers
}

assert(findDisappearedNumbers([4,3,2,7,8,2,3,1]) == [5,6], "Failed")
assert(findDisappearedNumbers2([4,3,2,7,8,2,3,1]) == [5,6], "Failed")
assert(findDisappearedNumbers3([4,3,2,7,8,2,3,1]) == [5,6], "Failed")
assert(findDisappearedNumbers4([4,3,2,7,8,2,3,1]) == [5,6], "Failed")




