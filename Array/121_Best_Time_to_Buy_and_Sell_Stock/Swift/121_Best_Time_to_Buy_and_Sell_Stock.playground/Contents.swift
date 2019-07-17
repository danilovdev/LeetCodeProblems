
func maxProfit(_ prices: [Int]) -> Int {
    guard prices.count > 1 else { return 0 }
    var result = 0
    var minPrice = Int.max
    for i in 0..<prices.count {
        if prices[i] < minPrice {
            minPrice = prices[i]
        }
        result = max(result, prices[i] - minPrice)
    }
    return result
}

assert(maxProfit([7,1,5,3,6,4]) == 5, "Failed")
assert(maxProfit([7,6,4,3,1]) == 0, "Failed")
