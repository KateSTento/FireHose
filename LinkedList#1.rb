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
      return nil
    else
      value = @top.value
      @top = @top.next_node
      return value
    end
  end
end

def print_forward(node)
  while node != nil
    print "#{node.value} --> "
    node = node.next_node
  end
    print "nil\n"
end

def reverse(list)
  #create an empty stack
  stack = Stack.new
  #push each item from the list into the stack
  while list
    stack.push(list.value)
    list = list.next_node
  end
  #pop each item off the stack into a linked list
  
    Node.new(stack.pop,stack.top)
end
 
def print_reverse(list)
  print_forward(reverse(list))
end

#test
nodeA = Node.new(10)
nodeB = Node.new(20, nodeA)
nodeC = Node.new(30, nodeB)
nodeD = Node.new(40, nodeC)
print_forward(nodeD)
print_reverse(nodeD)


