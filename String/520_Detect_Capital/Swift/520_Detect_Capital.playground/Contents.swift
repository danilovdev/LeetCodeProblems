import Foundation

// 1 Solution
func detectCapitalUse(_ word: String) -> Bool {
    return word == word.uppercased() ||
        word == word.lowercased() ||
        (word.first == word.uppercased().first && word.dropFirst() == word.lowercased().dropFirst())
}

// 2 Solution with prefix
func detectCapitalUse2(_ word: String) -> Bool {
    return word == word.lowercased() ||
        word == word.uppercased() ||
        word == word.prefix(1) + word.lowercased().dropFirst()
}

// 3 Solution with Character
func detectCapitalUse3(_ word: String) -> Bool {
    let zVal = Character("Z")
    let upperChars = word.filter { $0 <= zVal }.count
    return (upperChars == 0 ||
        upperChars == word.count ||
        (upperChars == 1 && word[word.startIndex] <= zVal))
}

assert(detectCapitalUse3("USA") == true, "Failed")
assert(detectCapitalUse2("FlaG") == false, "Failed")

