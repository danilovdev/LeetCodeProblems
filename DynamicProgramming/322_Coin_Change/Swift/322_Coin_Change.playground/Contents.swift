import UIKit

// 1. Solution bottom - up approach
func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    guard amount > 0 else { return 0 }
    let max = amount + 1
    var dp: [Int] = Array(repeating: max, count: max)
    dp[0] = 0
    for i in 1...amount {
        for j in 0..<coins.count {
            if coins[j] <= i {
                dp[i] = min(dp[i], dp[i - coins[j]] + 1)
            }
        }
    }
    return dp[amount] > amount ? -1 : dp[amount]
}

assert(coinChange([1, 2, 5], 11) == 3, "Failed")
assert(coinChange([2], 3) == -1, "Failed")

// 2. Solution top - down approach
func coinChange2(_ coins: [Int], _ amount: Int) -> Int {
    guard amount > 0 else { return 0 }
    let max = amount + 1
    var dp = Array(repeating: 0, count: max)
    return coinChangeHelper(coins, amount, &dp)
}

private func coinChangeHelper(_ coins: [Int], _ remainder: Int, _ dp: inout [Int]) -> Int {
    if remainder < 0 {
        return -1
    }
    if remainder == 0 {
        return 0
    }
    if dp[remainder] != 0 {
        return dp[remainder]
    }
    var minimmum = Int.max
    for coin in coins {
        let result = coinChangeHelper(coins, remainder - coin, &dp)
        if result >= 0 && result < minimmum {
            minimmum = result + 1
        }
    }
    dp[remainder] = Int.max == minimmum ? -1 : minimmum
    print(dp)
    return dp[remainder]
}

assert(coinChange2([1, 2, 5], 11) == 3, "Failed")
assert(coinChange2([2], 3) == -1, "Failed")
