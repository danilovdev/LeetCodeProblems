import UIKit

// 1. Recursive Solution
func fibonacciNumber(_ N: Int) -> Int {
    guard N > -1 else { return 0 }
    return fibRecursive(N)
}

func fibRecursive(_ N: Int) -> Int {
    if N == 0 { return 0 }
    if N == 1 { return 1 }
    return fibRecursive(N - 1) + fibRecursive(N - 2)
}

assert(fibonacciNumber(2) == 1, "Failed")
assert(fibonacciNumber(3) == 2, "Failed")
assert(fibonacciNumber(4) == 3, "Failed")
assert(fibonacciNumber(5) == 5, "Failed")

// 2. Dynamic Program Solution
func fibonacciNumber2(_ N: Int) -> Int {
    guard N > -1 else { return 0 }
    if N == 0 { return 0 }
    if N == 1 { return 1 }
    var dp: [Int] = Array(repeating: 0, count: N + 1)
    dp[0] = 0
    dp[1] = 1
    for number in 2...N {
        dp[number] = dp[number - 1] + dp[number - 2]
    }
    return dp[N]
}

assert(fibonacciNumber2(2) == 1, "Failed")
assert(fibonacciNumber2(3) == 2, "Failed")
assert(fibonacciNumber2(4) == 3, "Failed")
assert(fibonacciNumber2(5) == 5, "Failed")

// 3. Dynamic Programming Optimized Solution - Only Two Numbers in Array
func fibonacciNumber3(_ N: Int) -> Int {
    guard N > -1 else { return 0 }
    if N == 0 { return 0 }
    if N == 1 { return 1 }
    var dp: [Int] = [0, 1]
    for _ in 2...N {
        let temp = dp[1]
        dp[1] = dp[0] + dp[1]
        dp[0] = temp
    }
    return dp[1]
}

assert(fibonacciNumber3(2) == 1, "Failed")
assert(fibonacciNumber3(3) == 2, "Failed")
assert(fibonacciNumber3(4) == 3, "Failed")
assert(fibonacciNumber3(5) == 5, "Failed")

