import Foundation

func rotateString(_ A: String, _ B: String) -> Bool {
    guard A.count == B.count else { return false }
    if A.count == 0 { return true }
    return (A+A).contains(B)
}

assert(rotateString("abcde", "cdeab") == true, "Failed")
assert(rotateString("abcde", "abced") == false, "Failed")
