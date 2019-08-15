import Foundation

func moveZeroes(nums: inout [Int]) {
    var counter = 0
    for i in 0..<nums.count {
        if nums[i] == 0 {
            nums[counter] = nums[i]
            counter += 1
        }
    }
    for i in counter..<nums.count {
        nums[i] = 0
    }
}
