import Foundation

func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var table: [Int: Int] = [:]
    for item in arr {
        table[item, default: 0] += 1
    }
    let set = Set(table.values)
    return set.count == table.values.count
}

assert(uniqueOccurrences([1,2,2,1,1,3]) == true, "Failed")
assert(uniqueOccurrences([1,2]) == false, "Failed")
assert(uniqueOccurrences([-3,0,1,-3,1,1,1,-3,10,0]) == true, "Failed")

func uniqueOccurrences2(_ arr: [Int]) -> Bool {
    var table: [Int: Int] = [:]
    for item in arr {
        table[item, default: 0] += 1
    }
    var table2: [Int: Bool] = [:]
    for item in table.values {
        if table2[item] != nil {
            return false
        } else {
            table2[item] = true
        }
    }
    return true
}

assert(uniqueOccurrences2([1,2,2,1,1,3]) == true, "Failed")
assert(uniqueOccurrences2([1,2]) == false, "Failed")
assert(uniqueOccurrences2([-3,0,1,-3,1,1,1,-3,10,0]) == true, "Failed")
