=begin
Factorial digit sum
Problem 20
n! means n x (n - 1) x ... x 3 x 2 x 1

For example, 10! = 10 x 9 x ... x 3 x 2 x 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!
=end
require 'bigdecimal'
def sum_digits(n)
  n.to_s.split('').map(&:to_i).reduce(:+)
end

def factorial(n)
  1.upto(n).reduce(:*)
end

def run!
  puts sum_digits(factorial(100))
end

run! if $PROGRAM_NAME == __FILE__
