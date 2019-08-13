
func thirdMax(_ nums: [Int]) -> Int {
    var max1: Int?
    var max2: Int?
    var max3: Int?
    
    for n in nums {
        if n == max1 || n == max2 || n == max3 {
            continue
        }
        if max1 == nil || n > max1! {
            max3 = max2
            max2 = max1
            max1 = n
        } else if max2 == nil || n > max2! {
            max3 = max2
            max2 = n
        } else if max3 == nil || n > max3! {
            max3 = n
        }
    }
    
    if max3 != nil {
        return max3!
    }
    return max1 ?? 0
}

assert(thirdMax([3, 2, 1]) == 1, "Failed")
assert(thirdMax([1, 2]) == 2, "Failed")
assert(thirdMax([2, 2, 3, 1]) == 1, "Failed")

