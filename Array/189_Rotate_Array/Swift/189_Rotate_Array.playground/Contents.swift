import Foundation

func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
    var start = start
    var end = end
    while start < end {
        let temp = nums[start]
        nums[start] = nums[end]
        nums[end] = temp
        start += 1
        end -= 1
    }
}

func rotate(_ nums: inout [Int], _ k: Int) {
    let k = k % nums.count
    
    reverse(&nums, 0, nums.count - 1)
    reverse(&nums, 0, k - 1)
    reverse(&nums, k, nums.count - 1)
}

var array1 = [1,2,3,4,5,6,7]
var array2 = [-1,-100,3,99]

rotate(&array1, 3)
rotate(&array2, 2)

assert(array1 == [5,6,7,1,2,3,4], "Failed")
assert(array2 == [3,99,-1,-100], "Failed")
