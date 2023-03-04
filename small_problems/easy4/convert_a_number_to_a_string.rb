# Write a method that takes a positive integer or zero, and converts it to a string representation.
# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc.
# Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

NUMBERS = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

def integer_to_string(num)
  arr = []
  loop do
    arr.unshift(NUMBERS[num % 10])
    num /= 10
    break if num == 0
  end
  arr.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
