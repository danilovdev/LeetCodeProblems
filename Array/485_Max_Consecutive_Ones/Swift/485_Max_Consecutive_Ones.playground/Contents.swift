import Foundation

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var prevMax = 0
    var totalMax = 0
    for num in nums {
        if num == 1 {
            prevMax += 1
            totalMax = max(prevMax, totalMax)
        } else {
            prevMax = 0
        }
    }
    return totalMax
}

assert(findMaxConsecutiveOnes([1, 1, 0, 1, 1, 1]) == 3, "Failed")
