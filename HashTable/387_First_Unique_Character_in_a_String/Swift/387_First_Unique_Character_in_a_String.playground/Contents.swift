
// Frequency table for characters
func firstUniqueChar(_ s: String) -> Int {
    var table: [Character: Int] = [:]
    for ch in s {
        table[ch, default: 0] += 1
    }
    for (index, ch) in s.enumerated() {
        if table[ch] == 1 {
            return index
        }
    }
    return -1
}

assert(firstUniqueChar("leetcode") == 0, "Failed")
assert(firstUniqueChar("loveleetcode") == 2, "Failed")

// Hash Table for character indexes
func firstUniqueChar2(_ s: String) -> Int {
    var table: [Character: Int] = [:]
    for (index, ch) in s.enumerated() {
        if table[ch] == nil {
            table[ch] = index
        } else {
            table[ch] = -1
        }
    }
    
    var min = Int.max
    for (_, value) in table {
        if value > -1 && value < min {
            min = value
        }
    }
    
    return min == Int.max ? -1 : min
}

assert(firstUniqueChar2("leetcode") == 0, "Failed")
assert(firstUniqueChar2("loveleetcode") == 2, "Failed")

