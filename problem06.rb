# Sum square difference
# Problem 6
# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_of_squares(min, max)
  min.upto(max).map do |i|
    i**2
  end.reduce(:+)
end

def square_of_sums(min, max)
  min.upto(max).reduce(:+)**2
end

def sum_square_difference(min, max)
  square_of_sums(min, max) - sum_of_squares(min, max)
end

puts sum_square_difference(1, 100)
