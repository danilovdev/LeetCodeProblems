import Foundation

func licenseKeyFormatting(_ S: String, _ K: Int) -> String {
    var S = S
    S = S.uppercased()
    S = S.replacingOccurrences(of: "-", with: "")
    
    var charArray = Array(S)
    for i in stride(from: S.count - K, to: 0, by: -K) {
        charArray.insert("-", at: i)
    }
    
    return String(charArray)
}

assert(licenseKeyFormatting("5F3Z-2e-9-w", 4) == "5F3Z-2E9W", "Failed")
assert(licenseKeyFormatting("2-5g-3-J", 2) == "2-5G-3J", "Failed")




