import Foundation

func productExceptSelf1(_ nums: [Int]) -> [Int] {
    let n = nums.count
    
    var leftProducts: [Int] = Array(repeating: 0, count: n)
    var rightProducts: [Int] = Array(repeating: 0, count: n)
    var resultProducts: [Int] = Array(repeating: 0, count: n)
    
    leftProducts[0] = 1
    rightProducts[n - 1] = 1
    
    for i in 1..<n {
        leftProducts[i] = leftProducts[i - 1] * nums[i - 1]
    }
    
    for i in (0..<(n - 1)).reversed() {
        rightProducts[i] = rightProducts[i + 1] * nums[i + 1];
    }
    
    for i in 0..<n {
        resultProducts[i] = leftProducts[i] * rightProducts[i]
    }
    
    return resultProducts
}

assert(productExceptSelf1([1,2,3,4]) == [24,12,8,6], "Failed")

func productExceptSelf2(_ nums: [Int]) -> [Int] {
    let n = nums.count
    var products: [Int] = Array(repeating: 0, count: n)
    products[0] = 1
    
    for i in 1..<n {
        products[i] = nums[i - 1] * products[i - 1]
    }
    
    var r = 1
    
    for i in (0..<n).reversed() {
        products[i] = products[i] * r
        r = r * nums[i]
    }
    
    return products
}

assert(productExceptSelf2([1,2,3,4]) == [24,12,8,6], "Failed")
