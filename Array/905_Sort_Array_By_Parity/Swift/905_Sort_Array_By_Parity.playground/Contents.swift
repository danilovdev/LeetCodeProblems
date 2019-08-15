import Foundation

// 1 Solution - with static array and with 2 loops
func sortArrayByParity(_ A: [Int]) -> [Int] {
    var sortedArray = Array(repeating: 0, count: A.count)
    var counter = 0
    for i in 0..<A.count {
        if A[i] % 2 == 0 {
            sortedArray[counter] = A[i]
            counter += 1
        }
    }
    for i in 0..<A.count {
        if A[i] % 2 != 0 {
            sortedArray[counter] = A[i]
            counter += 1
        }
    }
    return sortedArray
}

// 2 Solution - with Dynamic array and 2 loops
func sortArrayByParity2(_ A: [Int]) -> [Int] {
    var sortedArray: [Int] = []
    for i in 0..<A.count {
        if A[i] % 2 == 0 {
            sortedArray.append(A[i])
        }
    }
    for i in 0..<A.count {
        if A[i] % 2 != 0 {
            sortedArray.append(A[i])
        }
    }
    return sortedArray
}

// 3 Solution - with one array
func sortArrayByParity3(_ A: [Int]) -> [Int] {
    var sortedArray = A
    var counter = 0
    for i in 0..<sortedArray.count {
        if sortedArray[i] % 2 == 0 {
            let temp = sortedArray[counter]
            sortedArray[counter] = sortedArray[i]
            sortedArray[i] = temp
            counter += 1
        }
    }
    return sortedArray
}

assert(sortArrayByParity([3,1,2,4]) == [2,4,3,1], "Failed")
assert(sortArrayByParity2([3,1,2,4]) == [2,4,3,1], "Failed")
assert(sortArrayByParity3([3,1,2,4]) == [2,4,3,1], "Failed")
