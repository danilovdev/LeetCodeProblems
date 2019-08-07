import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    guard strs.count > 0 else { return "" }
    var prefix = ""
    var commonPrefix = ""
    let firstWord = strs.first!
    for letter in firstWord {
        prefix.append(letter)
        for i in 1..<strs.count {
            if !strs[i].hasPrefix(prefix) {
                return commonPrefix
            }
        }
        commonPrefix = prefix
    }
    return commonPrefix
}

assert(longestCommonPrefix(["flower","flow","flight"]) == "fl", "Failed")
assert(longestCommonPrefix(["dog","racecar","car"]) == "", "Failed")
