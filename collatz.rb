def collatz_sequence(n)
  sequence = [n]
  until n == 1
    n = (n.even?) ? (n / 2) : (3 * n + 1)
      sequence << n
    end
    sequence
  end
  

n = (1 .. 1_000_000).max_by{|n| collatz_sequence(n).length}

puts "#{n}"
puts "#{collatz_sequence(n).length}"    