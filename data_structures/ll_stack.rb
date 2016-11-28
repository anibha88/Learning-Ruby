# Linked list implementation of stack

# reference : https://www.leighhalliday.com/stack-in-ruby-linked-lists

=begin
What is a Stack?

A Stack is an abstract data type in programming which has variety of uses. 
The basic premise of a Stack is that you can add a new value to the end(pushing),
and you can remove the last value off the end. This is referred to as LIFO - Last In First Out

Our Stack will have 3 external methods: push(aliased as <<), pop and is_empty?

Here is a high level overview of how the code will be structured.

module LinkedList
  class Node
    # Linked list implementation
  end

  class Stack
    # Stack methods reside here
  end
end

  
=end

module LinkedList
  class Node
    attr_accessor :value, :next_node
    def initialize(value, next_node)
      @value = value
      @next_node = next_node
    end
  end

  class Stack < Node
    def initialize
      @first = nil
    end

    def push(value)
      @first = Node.new(value, @first)
    end
    alias_method :"<<", :push

    def pop
      raise "Stack is empty" if is_empty?
      value = @first.value
      @first = @first.next_node
      value
    end

    def is_empty?
      @first.nil?
    end
  end
end

# here is how to use our stack
stack = LinkedList::Stack.new

stack << "Nithin"
stack << "is"
stack << "a"
stack << "good"
stack << "programmer"

begin
  puts stack.pop
  puts stack.pop
  puts stack.pop
  puts stack.pop
  puts stack.pop
  puts stack.pop
rescue RuntimeError => e
  puts "Error - #{e.message}"
end

