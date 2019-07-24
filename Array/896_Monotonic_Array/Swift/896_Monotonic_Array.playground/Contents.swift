func isMonotonic(_ A: [Int]) -> Bool {
    var increasing = true
    var decreasing = true
    for i in 0..<(A.count - 1) {
        if A[i] < A[i + 1] {
            decreasing = false
        }
        if A[i] > A[i + 1] {
            increasing = false
        }
    }
    return increasing || decreasing
}

assert(isMonotonic([1,2,2,3]) == true, "Failed")
assert(isMonotonic( [6,5,4,4]) == true, "Failed")
assert(isMonotonic( [1,3,2]) == false, "Failed")
assert(isMonotonic([1,2,4,5]) == true, "Failed")
assert(isMonotonic([1,1,1]) == true, "Failed")
