
func isValid(_ s: String) -> Bool {
    var stack: [Character] = []
    for ch in s {
        if ch == "(" {
            stack.append(")")
        } else if ch == "{" {
            stack.append("}")
        } else if ch == "[" {
            stack.append("]")
        } else if stack.popLast() != ch {
            return false
        }
    }
    
    return stack.isEmpty
}

assert(isValid("()") == true, "Failed")
assert(isValid("()[]{}") == true, "Failed")
assert(isValid("(]") == false, "Failed")
assert(isValid("{[]}") == true, "Failed")


