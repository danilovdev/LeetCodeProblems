
func commonChars(_ A: [String]) -> [String] {
    guard A.count > 0 else { return [] }
    var copy = A
    var result = [String]()
    var counter = 0
    for ch in copy[0] {
        counter = 0
        for i in 0..<copy.count {
            if let index = copy[i].firstIndex(of: ch) {
                copy[i].remove(at: index)
                counter += 1
            }
        }
        if counter == copy.count {
            result.append(String(ch))
        }
    }
    return result
}

assert(commonChars(["bella","label","roller"]) == ["e","l","l"], "Failed")
assert(commonChars(["cool","lock","cook"]) == ["c","o"], "Failed")
