load 'problem03.rb'

# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def prime?(n)
  primes(n).size == 1
end

def nth_prime(n)
  index = 0
  x = 1
  loop do
    if prime?(x)
      index += 1
      return x if index == n
    end
    x += 1
  end
end

puts nth_prime(10_001)
