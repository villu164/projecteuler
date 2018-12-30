# Longest Collatz sequence
# Problem 14
# The following iterative sequence is defined for the set of positive integers:

# n -> n/2 (n is even)
# n -> 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

def collatz(n, counter = 0)
  return counter + 1 if n == 1
  return collatz(n/2, counter + 1) if n.even?
  collatz(3*n + 1, counter + 1)
end

longest_chain = 0
longest_chain_starting_number = 0
1.upto(1e6).each do |i|
  collatz_chain_size = collatz(i)
  if collatz_chain_size > longest_chain
    longest_chain = collatz_chain_size
    longest_chain_starting_number = i
    puts "#{i} => #{collatz(i)}"
  end
end
puts "#{longest_chain_starting_number} produces #{longest_chain} links in chain"
