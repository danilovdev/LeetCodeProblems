import Foundation

// 1 Solution 1 - Recursive - Time Limit Exceeded!
func climbStairs(_ n: Int) -> Int {
    if n < 0 {
        return 0
    }
    if n < 3 {
        return n
    }
    return climbStairs(n - 1) + climbStairs(n - 2)
}

 // 2 Solution - Recursion with memoization
func climbStair2(_ n: Int) -> Int {
    if n < 0 {
        return 0
    }
    if n < 3 {
        return n
    }
    var memo = Array(repeating: 0, count: n - 1)
    memo[0] = 1
    memo[1] = 2
    return climbStairsRecursive(n, &memo)
}

func climbStairsRecursive(_ n: Int, _ memo: inout [Int]) -> Int {
    if n < 0 {
        return 0
    }
    if memo[n] > 0 {
        return memo[n]
    }
    memo[n] = climbStairsRecursive(n - 1, &memo) + climbStairsRecursive(n - 2, &memo)
    return memo[n]
}

// 3 Solution - Bottom-Up with Static Array
func climbStairs3(_ n: Int) -> Int {
    if n < 0 {
        return 0
    }
    if n < 3 {
        return n
    }
    var array = Array(repeating: 0, count: n)
    array[0] = 1
    array[1] = 2
    for i in 2..<n {
        array[i] = array[i - 1] + array[i - 2]
    }
    return array[n - 1]
}

// 4 Solution - Bottom-Up with Dynamic Array
func climbStairs4(_ n: Int) -> Int {
    if n < 0 {
        return 0
    }
    if n < 3 {
        return n
    }
    var array = [1, 2]
    for i in 2..<n {
        array.append(array[i - 1] + array[i - 2])
    }
    return array[n - 1]
}

// 5 Solution - Bottom-Up with 2 vriables
func climbStairs5(_ n: Int) -> Int {
    if n < 0 {
        return 0
    }
    if n <= 3 {
        return n
    }
    var n1 = 1
    var n2 = 2
    for _ in 3...n {
        let temp = n2
        n2 = n1 + n2
        n1 = temp
    }
    return n2
}

// 6 Solution - Bottom-Up with tuples
func climbStairs6(_ n: Int) -> Int {
    if n < 0 {
        return 0
    }
    if n <= 3 {
        return n
    }
    var n1 = 1
    var n2 = 2
    for _ in 3...n {
        (n1, n2) = (n2, n1 + n2)
    }
    return n2
}
