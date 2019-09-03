import Foundation

func getSum(_ a: Int, _ b: Int) -> Int {
    if (b == 0) { return a }
    return getSum(a ^ b, ((a & b) << 1))
}

assert(getSum(1, 2) == 3, "Failed")
assert(getSum(-2, 3) == 1, "Failed")
