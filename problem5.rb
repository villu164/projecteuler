# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_multiple(min, max)
  1.upto((min..max).reduce(:*)).detect do |candidate|
    min.upto(max).all? do |tester|
      (candidate % tester).zero?
    end
  end
end

puts smallest_multiple(1, 20)
