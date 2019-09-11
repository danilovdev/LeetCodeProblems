import Foundation

class MinStack {
    
    struct Item {
        
        let value: Int
        
        let min: Int
    }
    
    private var stack: [Item]
    
    init() {
        stack = []
    }
    
    func push(_ x: Int) {
        if stack.count == 0 {
            let newItem = Item(value: x, min: x)
            stack.append(newItem)
        } else {
            let newMin = min(x, getMin())
            let newItem = Item(value: x, min: newMin)
            stack.append(newItem)
        }
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func top() -> Int {
        return stack.last!.value
    }
    
    func getMin() -> Int {
        return stack.last!.min
    }
}

var minStack = MinStack()
minStack.push(-2)
minStack.push(0)
minStack.push(-3)
minStack.getMin() //   --> Returns -3.
minStack.pop()
minStack.top() //  --> Returns 0.
minStack.getMin() //   --> Returns -2.
