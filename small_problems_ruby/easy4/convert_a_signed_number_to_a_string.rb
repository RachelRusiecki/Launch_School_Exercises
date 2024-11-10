# Write a method that takes an integer, and converts it to a string representation.
# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc.
# You may, however, use integer_to_string from the previous exercise.

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

def signed_integer_to_string(num)
  result = integer_to_string(num.abs)
  if num < 0
    "-#{result}"
  elsif num > 0
    "+#{result}"
  else
    result
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
