
func increasingTriplet(_ nums: [Int]) -> Bool {
    let n = nums.count
    guard n > 2 else { return false }
    var small = Int.max
    var big = Int.max
    for number in nums {
        if number < small {
            small = number
        } else if number < big {
            big = number
        } else {
            return true
        }
    }
    return false
}

assert(increasingTriplet([1,2,3,4,5]) == true, "Failed")
assert(increasingTriplet([5,4,3,2,1]) == false, "Failed")

