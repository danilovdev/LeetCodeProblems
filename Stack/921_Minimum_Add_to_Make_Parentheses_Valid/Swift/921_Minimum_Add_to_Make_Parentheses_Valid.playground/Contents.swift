func minAddToMakeValid(_ S: String) -> Int {
    var stack: [Character] = []
    for ch in S {
        if ch == "(" {
            stack.append(ch)
        } else if ch == ")" {
            if stack.last == "(" {
                stack.removeLast()
            } else {
                stack.append(ch)
            }
        }
    }
    return stack.count
}

assert(minAddToMakeValid("())") == 1, "Failed")
assert(minAddToMakeValid("(((") == 3, "Failed")
assert(minAddToMakeValid("()") == 0, "Failed")
assert(minAddToMakeValid("()))((") == 4, "Failed")

