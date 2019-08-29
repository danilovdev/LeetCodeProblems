import Foundation

func toLowerCase1(_ str: String) -> String {
    let convertedArray = Array(str).map { char -> Character in
        if let asciiValue = char.asciiValue, asciiValue >= 65, asciiValue <= 90 {
            return Character(UnicodeScalar(asciiValue + 32))
        }
        return char
    }
    return String(convertedArray)
}

extension Character {
    
    var unicodeValue: UInt32 {
        return unicodeScalars.map { $0.value }.reduce(0, +)
    }
}

func toLowerCase2(_ str: String) -> String {
    let convertedArray = Array(str).map { char -> Character in
        if char.unicodeValue >= 65 && char.unicodeValue <= 97,
            let lowerUnicodeScalar = UnicodeScalar(char.unicodeValue + 32) {
            return Character(lowerUnicodeScalar)
        }
        return char
    }
    
    return String(convertedArray)
}

assert(toLowerCase1("Hello") == "hello", "Failed")
assert(toLowerCase1("here") == "here", "Failed")
assert(toLowerCase1("LOVELY") == "lovely", "Failed")

assert(toLowerCase2("Hello") == "hello", "Failed")
assert(toLowerCase2("here") == "here", "Failed")
assert(toLowerCase2("LOVELY") == "lovely", "Failed")



