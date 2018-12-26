load 'problem03.rb'

# Summation of primes
# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def prime?(n)
  primes(n).size == 1
end

def sum_primes(max)
  sum = 0
  2.upto(max - 1).each do |n|
    sum += n if prime?(n)
  end
  sum
end

puts sum_primes(2e6)
