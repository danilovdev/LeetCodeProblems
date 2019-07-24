func validMountainArray(_ A: [Int]) -> Bool {
    let count = A.count
    guard count > 2 else { return false }
    var i = 0
    while (i + 1 < count && A[i] < A[i + 1]) {
        i += 1
    }
    guard i != 0 && i != (count - 1) else { return false }
    while (i + 1 < count && A[i] > A[i + 1]) {
        i += 1
    }
    return i == (count - 1)
}

assert(validMountainArray([2,1]) == false, "Failed")
assert(validMountainArray([3,5,5]) == false, "Failed")
assert(validMountainArray([0,3,2,1]) == true, "Failed")
