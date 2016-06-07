class Node
	attr_accessor :value, :next_node
  
  def initialize (value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class Stack 
  attr_accessor :top
  #start with empty stack
  
  def initialize
    @top = nil
  end

  #to push a value onto the stack

  def push (value)
    @top = Node.new(value, @top)
  end

  #to pop a value off the stack
  
  def pop
    if @top == nil
      return "nil"
    else
      value = @top.value
      @top = @top.next_node
      return value
    end
  end

  #to reverse the stack
  def reverse
    current = @top
    prev = nil
    
    until current == nil
      n_node = current.next_node
      current.next_node = prev
      prev = current
      current = n_node
    end
    @head = prev
  end
  
  
end

def print_forward(node)
  while node != nil
    print "#{node.value} --> "
    node = node.next_node
  end
    print "nil\n"
end


def print_reverse(stack)
  reversed_stack = stack.reverse
  print_forward(reversed_stack)
end


#test
stack = Stack.new
nodeA = stack.push(1)
nodeB = stack.push(2)
print_forward(nodeB)
puts stack.pop
puts stack.pop
puts stack.pop
stackB = Stack.new
node1 = stackB.push(10)
node2 = stackB.push(20)
node3 = stackB.push(30)
node4 = stackB.push(40)
print_forward(node4)
print_reverse(stackB)















