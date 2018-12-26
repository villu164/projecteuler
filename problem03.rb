# Largest prime factor
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def run!
  puts primes(600_851_475_143).max
end

def primes(input)
  primes = []
  working_area = input.dup
  (2..(input**0.5).ceil).each do |i|
    while (working_area % i).zero?
      working_area /= i
      primes << i
    end
  end
  primes << working_area if working_area > 1
  primes
end

run! if $PROGRAM_NAME == __FILE__
