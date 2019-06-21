import UIKit

func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }
    var table: [Character: Int] = [:]
    for ch in s {
        table[ch, default: 0] += 1
    }
    for ch in t {
        table[ch, default: 0] -= 1
    }
    for value in table.values {
        if value != 0 {
            return false
        }
    }
    return true
}

assert(isAnagram("rat", "car") == false, "Failed")
assert(isAnagram("anagram", "nagaram") == true, "Failed")

// Solution 2 with Sorted strings
func isAnagram2(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }
    return s.sorted() == t.sorted()
}

assert(isAnagram2("rat", "car") == false, "Failed")
assert(isAnagram2("anagram", "nagaram") == true, "Failed")


