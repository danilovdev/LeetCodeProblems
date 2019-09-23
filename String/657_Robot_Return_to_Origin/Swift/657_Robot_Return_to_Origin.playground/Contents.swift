import Foundation

func judgeCircle(_ moves: String) -> Bool {
    var horizontal = 0
    var vertical = 0
    for move in moves {
        switch move {
        case "L":
            horizontal -= 1
        case "R":
            horizontal += 1
        case "U":
            vertical += 1
        case "D":
            vertical -= 1
        default:
            break
        }
    }
    return horizontal == 0 && vertical == 0
}

assert(judgeCircle("UD") == true, "Failed")
assert(judgeCircle("LL") == false, "Failed")

