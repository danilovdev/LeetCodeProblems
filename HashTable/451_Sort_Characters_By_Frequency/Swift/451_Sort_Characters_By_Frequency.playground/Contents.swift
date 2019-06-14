

func frequencySort(_ s: String) -> String {
    var table: [Character: Int] = [:]
    for ch in s {
        table[ch, default: 0] += 1
    }
    
    let sortedTuples = table.sorted { $0.1 > $1.1 }
    let result = sortedTuples.reduce("") { result, tuple in
        var part = ""
        for _ in 0..<tuple.value {
            part += String(tuple.key)
        }
        return result + part
    }
    print(result)
    return result
}

assert(frequencySort("tree") == "eert", "Frequency sort does not work")
assert(frequencySort("cccaaa") == "cccaaa", "Frequency sort does not work")
assert(frequencySort("Aabb") == "bbAa", "Frequency sort does not work")
