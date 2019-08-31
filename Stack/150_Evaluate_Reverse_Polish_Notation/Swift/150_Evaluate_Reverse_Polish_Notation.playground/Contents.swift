import Foundation

func evalRPN(_ tokens: [String]) -> Int {
    var stack: [Int] = []
    for token in tokens {
        if token == "*" {
            let result = stack.removeLast() * stack.removeLast()
            stack.append(result)
        } else if token == "+" {
            let result = stack.removeLast() + stack.removeLast()
            stack.append(result)
        } else if token == "/" {
            let second = stack.removeLast()
            let first = stack.removeLast()
            let result = first / second
            stack.append(result)
        } else if token == "-" {
            let second = stack.removeLast()
            let first = stack.removeLast()
            let result = first - second
            stack.append(result)
        } else {
            stack.append(Int(token)!)
        }
    }
    return stack.removeLast()
}

