# stacks are last in first out data structure
class Stack
  def initialize
    @elements = []
  end
  def length
    @elements.length
  end
  # return self
  def push(x)
    @elements.push x
    self
  end
  def pop
    @elements.pop
  end
  def peek
    @elements[-1]
  end
  def display
    puts "(Leftmost : Oldest element)" + @elements.join("<-") + " (RightMost: Newest Element)"
  end
end

testStack = Stack.new()
# Display initial empty stack
testStack.display

# Push elements into the stack
testStack.push(3).push(6).push(10)
# Now Display stack
testStack.display

#check the value at the top of the head
popped = testStack.pop
puts "Popped value : " + popped.to_s
# Now the stack is...
testStack.display

popped = testStack.pop
puts "Popped value : " + popped.to_s
# Now the stack is...
testStack.display
