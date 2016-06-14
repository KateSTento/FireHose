
#fib(n) = fib(n-1) + fib(n-2)


#fib(0) = 0  
#fib(1) = 1  
#fib(2) = 1          
#fib(3) = 2
#fib(4) = 3 
#fib(5) = 5
#fib(6) = 8

def iterative_fib (n)
  a = 0
  b = 1
  
  n.times do 
    temp = a
    a = b
    b = temp + b
  end
  
  return a
end

def recursive_fib(n)
  if n <= 1
    n
  else
    recursive_fib(n-1) + recursive_fib(n-2)
    
  end
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end

