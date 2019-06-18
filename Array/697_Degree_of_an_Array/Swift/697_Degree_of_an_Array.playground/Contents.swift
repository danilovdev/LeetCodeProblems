import UIKit

func degreeOfAnArray(_ nums: [Int]) -> Int {
    // HashMap for left indexes
    var leftTable: [Int: Int] = [:]
    // HashMap for right indexes
    var rightTable: [Int: Int] = [:]
    // HashMap for count of each number
    var countTable: [Int: Int] = [:]
    
    // fill hash maps
    for (index, value) in nums.enumerated() {
        // first appear of mumber in array
        if leftTable[value] == nil {
            leftTable[value] = index
        }
        // last appear of number in array
        rightTable[value] = index
        // increase count for number
        countTable[value, default: 0] += 1
    }
    
    var result = nums.count
    let degree = countTable.values.max() ?? 0
    
    for key in countTable.keys {
        // if degree of array equals to degree of subarray
        if countTable[key] == degree,
            let rightIndex = rightTable[key],
            let leftIndex = leftTable[key] {
            result = min(result, rightIndex - leftIndex + 1)
        }
    }
    
    return result
}

assert(degreeOfAnArray([1, 2, 2, 3, 1]) == 2, "Failed")
assert(degreeOfAnArray([1,2,2,3,1,4,2]) == 6, "Failed")
