import Foundation

// 1 Solution - Using SDK method replacingOccurrences
func defangIPaddr(_ address: String) -> String {
    return address.replacingOccurrences(of: ".", with: "[.]")
}

assert(defangIPaddr("1.1.1.1") == "1[.]1[.]1[.]1", "Failed")
assert(defangIPaddr("255.100.50.0") == "255[.]100[.]50[.]0", "Failed")

// 2 Solution - with array and map
func defangIPaddr2(_ address: String) -> String {
    let array = address.map { value -> String in
        if value == "." {
            return "[.]"
        } else {
            return String(value)
        }
    }
    return array.joined()
}

assert(defangIPaddr2("1.1.1.1") == "1[.]1[.]1[.]1", "Failed")
assert(defangIPaddr2("255.100.50.0") == "255[.]100[.]50[.]0", "Failed")

// 3 Solution - with reduce method
func defangIPaddr3(_ address: String) -> String {
    return address.reduce("") { result, part in
        if part == "." {
            return result + "[.]"
        }
        return result + String(part)
    }
}

assert(defangIPaddr3("1.1.1.1") == "1[.]1[.]1[.]1", "Failed")
assert(defangIPaddr3("255.100.50.0") == "255[.]100[.]50[.]0", "Failed")
