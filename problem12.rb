require 'prime'

# I cheated, will have to read more
# https://codereview.stackexchange.com/questions/144029/find-numbers-with-same-number-of-divisors
# Won't submit the answer, until I have read a bit more
class Integer
  def tau
    self.prime_division.map(&:last).inject(1){|prod,i| prod *= i+1}
  end
end

def triangle_numbers(n)
  n * (n + 1) / 2
end

def more_than_n_divisors(n)
  i = 1
  loop do
    triangle = triangle_numbers(i)
    triangle_divisors = triangle.tau
    return triangle if triangle_divisors > n
    i += 1
  end
end

# 76576500
puts more_than_n_divisors(1000)
