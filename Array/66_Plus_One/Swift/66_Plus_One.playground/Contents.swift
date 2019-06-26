
func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits
    for i in stride(from: digits.count - 1, through: 0, by: -1) {
        if digits[i] < 9 {
            digits[i] += 1
            return digits
        }
        digits[i] = 0
    }
    var result: [Int] = [1]
    result += digits
    return result
}

assert(plusOne([1, 2, 3]) == [1, 2, 4], "Failed")
assert(plusOne([4, 3, 2, 1]) == [4, 3, 2, 2], "Failed")

