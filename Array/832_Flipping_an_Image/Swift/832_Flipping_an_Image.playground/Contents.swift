import Foundation

func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
    var A = A
    for i in 0..<A.count {
        var low = 0
        var high = A[i].count - 1
        while low <= high {
            if A[i][low] == A[i][high] {
                A[i][low] = 1 - A[i][low]
                A[i][high] = A[i][low]
            }
            low += 1
            high -= 1
        }
    }
    return A
}

assert(flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]]) == [[1,0,0],[0,1,0],[1,1,1]], "Failed")
assert(flipAndInvertImage([[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]) == [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]], "Failed")

