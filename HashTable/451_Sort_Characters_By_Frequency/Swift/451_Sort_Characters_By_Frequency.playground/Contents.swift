

func frequencySort(_ s: String) -> String {
    // 1. fill frequency table
    var table: [Character: Int] = [:]
    for ch in s {
        table[ch, default: 0] += 1
    }
    
    // 2. sort frequency table descending and get array of sorted tuple [(key: Character, value: Int)]
    let sortedTuples = table.sorted { $0.1 > $1.1 }
    
    // 3. reduce array of tuples into string by converting every item in array into part of result string
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

// 4. test
assert(frequencySort("tree") == "eert", "Frequency sort does not work")
assert(frequencySort("cccaaa") == "cccaaa", "Frequency sort does not work")
assert(frequencySort("Aabb") == "bbAa", "Frequency sort does not work")
