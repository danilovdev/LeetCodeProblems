import UIKit

//Input: 10
//Output: 4
//Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.

// 1 Solution. With Functional programming
func countPrimes(_ n: Int) -> Int {
    guard n > 1 else { return 0 }
    var array = Array(repeating: true, count: n)
    array[0] = false
    array[1] = false
    for i in 2..<n {
        if array[i] {
            for j in stride(from: i * i, to: n, by: i) {
                array[j] = false
            }
        }
    }
    let result = array.filter { $0 }.count
    return result
}

assert(countPrimes(10) == 4, "Failed")

// 2 Solution without functional programming
func countPrimes2(_ n: Int) -> Int {
    guard n > 1 else { return 0 }
    var array = Array(repeating: true, count: n)
    array[0] = false
    array[1] = false
    for i in 2..<n {
        if array[i] {
            for j in stride(from: i * i, to: n, by: i) {
                array[j] = false
            }
        }
    }
    
    var result = 0
    for i in array {
        if i {
            result += 1
        }
    }
    return result
}

assert(countPrimes2(10) == 4, "Failed")

// 3 Solution with inner while loop
func countPrimes3(_ n: Int) -> Int {
    guard n > 1 else { return 0 }
    var array = Array(repeating: true, count: n)
    array[0] = false
    array[1] = false
    for i in 2..<n {
        if array[i] {
            var j = i
            while i * j < n {
                array[i * j] = false
                j += 1
            }
        }
    }
    var result = 0
    for i in array {
        if i {
            result += 1
        }
    }
    return result
}

assert(countPrimes3(10) == 4, "Failed")

// 4 Soultion counter infirst loop
func countPrimes4(_ n: Int) -> Int {
    guard n > 1 else { return 0 }
    var array = Array(repeating: true, count: n)
    array[0] = false
    array[1] = false
    var counter = 0
    for i in 2..<n {
        if array[i] {
            counter += 1
            var j = i
            while i * j < n {
                array[i * j] = false
                j += 1
            }
        }
    }
    return counter
}

assert(countPrimes4(10) == 4, "Failed")
