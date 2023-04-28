=begin

Problem:
- Input: integer
- Output: integer

Explicit Rules:
- Method will take 1 positive integer argument
- Return the sum of its digits
- Do not use any basic looping constructs (`while`, `until`, `loop`, `each`)

Implicit Rules:
- Assume all arguments are valid integers

Algorithm:
- Define a method called `sum` that takes 1 argument, a positive integer
  - Convert the integer to a string
  - Split the string into an array of string digits
  - Transform each gigit back into an integer
  - Sum each integer in the array 

=end

def sum(num)
  num.to_s.chars.map(&:to_i).sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
