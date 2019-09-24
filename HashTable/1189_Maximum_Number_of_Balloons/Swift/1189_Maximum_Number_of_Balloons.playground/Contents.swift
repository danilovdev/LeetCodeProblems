import Foundation

func maxNumberOfBalloons(_ text: String) -> Int {
    var table: [Character: Int] = [:]
    for ch in text {
        table[ch, default: 0] += 1
    }
    
    let countB = table["b"] ?? 0
    let countA = table["a"] ?? 0
    let countL = table["l"] ?? 0
    let countO = table["o"] ?? 0
    let countN = table["n"] ?? 0
    
    var result = countB
    result = min(result, countA)
    result = min(result, countL)
    result = min(result, countO)
    result = min(result, countN)
    return result
}

assert(maxNumberOfBalloons("nlaebolko") == 1, "Failed")
assert(maxNumberOfBalloons("loonbalxballpoon") == 2, "Failed")
assert(maxNumberOfBalloons("leetcode") == 0, "Failed")

extension Character {
    
    var intValue: Int {
        return Int(asciiValue!)
    }
}

func maxNumberOfBalloons2(_ text: String) -> Int {
    var array: [Int] = Array(repeating: 0, count: 26)
    for ch in text {
        let aCharInt = Character("a").intValue
        let charInt = ch.intValue
        array[charInt - aCharInt] += 1
    }
    
    var result = array[1] // b
    result = min(result, array[0]) // a
    result = min(result, array[11] / 2) // l
    result = min(result, array[14] / 2) // o
    result = min(result, array[13]) // n
    return result
}

assert(maxNumberOfBalloons2("nlaebolko") == 1, "Failed")
assert(maxNumberOfBalloons2("loonbalxballpoon") == 2, "Failed")
assert(maxNumberOfBalloons2("leetcode") == 0, "Failed")
