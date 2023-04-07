# Write a method that takes a String of digits, and returns the appropriate number as an integer.
# The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number.
# If no sign is given, you should return a positive number. You may assume the string will always contain a valid number.
# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

NUMBERS = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9 }

def string_to_integer(str)
  arr = str.chars.map { |num| NUMBERS[num] }
  new_arr = []
  place_counter = 1
  loop do
    new_arr << arr.pop * place_counter
    place_counter *= 10
    break if arr.empty?
  end
  new_arr.sum
end

# In our solution, we call string[1..-1] twice, and call string_to_integer three times. This is somewhat repetitive. Refactor our solution so it only makes these two calls once each.

def string_to_signed_integer(str)
  answer = string_to_integer(str.delete("-+"))
  str.start_with?("-") ? -answer : answer
end

p string_to_signed_integer_refactored("4321") == 4321
p string_to_signed_integer_refactored("-570") == -570
p string_to_signed_integer_refactored("+100") == 100

# Launch School's solution:

# def string_to_signed_integer(str)
#   case str[0]
#   when "-" then -string_to_integer(str[1..-1])
#   when "+" then string_to_integer(str[1..-1])
#   else string_to_integer(str)
#   end
# end
