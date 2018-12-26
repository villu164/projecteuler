# Largest palindrome product
# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindromic?(n)
  n.to_s == n.to_s.reverse
end

def palindromic_product_between(min, max)
  palindromic_max = 0
  max.downto(min).each do |number1|
    max.downto(min).each do |number2|
      product = number1 * number2
      next if product <= palindromic_max
      if palindromic?(product) && product > palindromic_max
        palindromic_max = product
      end
    end
  end
  palindromic_max
end

def palindromic_product_2d
  palindromic_product_between(10, 99)
end

def palindromic_product_3d
  palindromic_product_between(100, 999)
end

puts palindromic_product_3d
