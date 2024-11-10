=begin

Problem:
- Input: integer
- Output: integer

Explicit Rules:
- Method will take 1 number as an argument.
- Method should return the next featured number after the argument.
  - Featured numbers are always odd.
  - Featured numbers are always divisible by 7.
  - The digits in featured numbers only occur once each.
- If there are no possible solutions, method should return an error.

Implicit Rules:
-  Arguments will be whole positive integers.
- Return values should be whole positive integers.

Algorithm:
- Define a method called `featured` that takes 1 argument, an integer.
  - Return an error message if the argument is greater than 9,876,543,210 or less than -9,876,543,210.
  - Initialize a range variable and set it equal to the argument + 1 through 9,876,543,210.
  - Iterate through the range.
    - Skip the iteration if the number is even.
    - Skip the iteration if the number is not divisible by 7.
    - Convert the integer to a string.
    - Split the string into an array of characters.
    - Call the `.uniq` method on the array to get rid of any repeating digits.
    - Skip the iteration if the unique array has less elements than the original array.
  - Return the number if all the above conditions are met.

=end

def featured(num)
  return "There is no possible number that fulfills those requirements" if num > 9_876_543_210
  loop do
    num += 1
    break if (num.odd? && num % 7 == 0 && num.to_s.chars.uniq == num.to_s.chars) || num > 9_876_543_210
  end
  num > 9_876_543_210 ? "There is no possible number that fulfills those requirements" : num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
