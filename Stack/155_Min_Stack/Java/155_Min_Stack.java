class MinStack {
    
    class Item { 
    
        int value;
        
        int min;
        
        Item(int value, int min) { 
            this.value = value;
            this.min = min;
        }
    }
    
    private Stack<Item> stack;

    public MinStack() {
        stack = new Stack();
    }
    
    public void push(int x) {
        if (stack.isEmpty()) { 
            Item newItem = new Item(x, x);
            stack.push(newItem);
        } else { 
            int nextMin = Math.min(x, getMin());
            Item newItem = new Item(x, nextMin);
            stack.push(newItem);
        }
    }
    
    public void pop() {
        stack.pop();
    }
    
    public int top() {
        return stack.peek().value;
    }
    
    public int getMin() {
        return stack.peek().min;
    }
}