load 'problem03.rb'

# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def all_factors(min, max)
  min.upto(max).map do |i|
    primes(i)
  end
end

def smallest_even_product(min, max)
  factors = all_factors(min, max)
  max_primes = factors.flatten.uniq.map do |prime|
    (prime**factors).map do |factor|
      factor.count(prime)
    end.max
  end
  max_primes.reduce(:*)
end

puts smallest_even_product(1, 20)
