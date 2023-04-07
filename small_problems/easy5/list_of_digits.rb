=begin

Problem:
- Input: Integer
- Output: array of integers

Explicit Rules:
- Method will take 1 argument, a positive integer
- Return value will be an array of the integers in the number

Implicit Rules:
- Returned array will contain integers, not strings
- Single digit integers will return a single element array
- Assume all integers are postive

Algortithm:
- Define a method called `digit_list` that takes 1 argument, a positive integer
  - Convert the integer to a string
  - Split the string into an array
  - Transform each element in the array back into an integer

=end

def digit_list(num)
  num.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
