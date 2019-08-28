import Foundation

func countCharacters(_ words: [String], _ chars: String) -> Int {
    var table: [Character: Int] = [:]
    var sum = 0
    
    for ch in chars {
        table[ch, default: 0] += 1
    }
    
    for word in words {
        var tempTable = table
        var validCount = 0
        
        for ch in word {
            if tempTable[ch, default: 0] > 0 {
                tempTable[ch, default: 0] -= 1
                validCount += 1
            }
        }
        
        if validCount == word.count {
            sum += word.count
        }
    }
    
    return sum
}

assert(countCharacters(["cat","bt","hat","tree"], "atach") == 6, "Failed")
assert(countCharacters(["hello","world","leetcode"], "welldonehoneyr") == 10, "Failed")

