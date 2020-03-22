import UIKit

func asteroidCollision(_ asteroids: [Int]) -> [Int] {
    var stack = Array<Int>()
    for i in 0..<asteroids.count {
        if asteroids[i] > 0 {
            stack.append(asteroids[i])
        } else {
            while !stack.isEmpty && stack.last! > 0 && stack.last! < abs(asteroids[i]) {
                stack.removeLast()
            }
            
            if stack.isEmpty || stack.last! < 0 {
                stack.append(asteroids[i])
            } else if !stack.isEmpty && stack.last! == abs(asteroids[i]) {
                stack.removeLast()
            }
        }
    }
    return stack
}

assert(asteroidCollision([5, 10, -5]) == [5, 10], "Failed")
assert(asteroidCollision([8, -8]) == [], "Failed")
assert(asteroidCollision([10, 2, -5]) == [10], "Failed")
assert(asteroidCollision([-2, -1, 1, 2]) == [-2, -1, 1, 2], "Failed")
