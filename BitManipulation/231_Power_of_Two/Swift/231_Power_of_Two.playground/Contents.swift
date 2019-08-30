import Foundation

func isPowerOfTwo(_ n: Int) -> Bool {
    var n = n
    guard n > 0 else { return false }
    
    
    while (n % 2 == 0) {
        n = n / 2
    }
    
    return (n == 1)
}

assert(isPowerOfTwo(1) == true , "Failed")
assert(isPowerOfTwo(16) == true , "Failed")
assert(isPowerOfTwo(218) == false , "Failed")

func isPowerOfTwo2(_ n: Int) -> Bool {
    return (n > 0 && (n & (n - 1)) == 0)
}

assert(isPowerOfTwo2(1) == true , "Failed")
assert(isPowerOfTwo2(16) == true , "Failed")
assert(isPowerOfTwo2(218) == false , "Failed")
