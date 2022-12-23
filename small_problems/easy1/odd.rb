# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value.

def is_odd?(n)
  n % 2 == 1 || n % 2 == -1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

# The Integer#remainder method performs a remainder operation in Ruby. Rewrite #is_odd? to use Integer#remainder instead of %.

def is_odd?(n)
  n.remainder(2) == 1 || n.remainder(2) == -1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)