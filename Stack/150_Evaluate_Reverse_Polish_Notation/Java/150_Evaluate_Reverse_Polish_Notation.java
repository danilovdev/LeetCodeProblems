class Solution {
    public int evalRPN(String[] tokens) {
        Stack<Integer> stack = new Stack();
        for (String token : tokens) { 
            if (token.equals("*")) {
                int result = stack.pop() * stack.pop();
                stack.push(result);
            } else if (token.equals("+")) { 
                int result = stack.pop() + stack.pop();
                stack.push(result);
            } else if (token.equals("-")) { 
                int second = stack.pop();
                int first = stack.pop();
                int result = first - second;
                stack.push(result);
            } else if (token.equals("/")) { 
                int second = stack.pop();
                int first = stack.pop();
                int result = first / second;
                stack.push(result);
            } else { 
                stack.push(Integer.valueOf(token));
            }
        }
        return stack.pop();
    }
}