

func findTheDifference(_ s: String, _ t: String) -> Character {
    var table = [Character: Int]()
    for ch in s {
        table[ch, default: 0] += 1
    }
    for ch in t {
        guard let count = table[ch], count > 0 else {
            return ch
        }
        table[ch] = (count - 1)
    }
    return Character(" ")
}

assert(findTheDifference("abcd", "abcde") == "e", "Failed")

func findTheDifference2(_ s: String, _ t: String) -> Character {
    var result: UInt32 = 0
    for ch in s.unicodeScalars {
        result ^= ch.value
    }
    for ch in t.unicodeScalars {
        result ^= ch.value
    }
    return Character(UnicodeScalar(result)!)
}

assert(findTheDifference2("abcd", "abcde") == "e", "Failed")
