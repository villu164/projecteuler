# Multiples of 3 and 5

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_numbers(max)
  (1...max).select do |n|
    (n % 3).zero? || (n % 5).zero?
  end.inject(:+)
end

puts sum_numbers 1000
