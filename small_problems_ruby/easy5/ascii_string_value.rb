=begin

Problem:
- Input: string
- Output: integer, sum of ASCII values for each character

Explicit Rules:
- Method will take 1 argument (string)
- Must return the sum of the ASCII values of the string argument

Implicit Rules:
- Empty strings will return 0
- Spaces have an ASCII value

Algorithm
- Initialize a method definintion called `ascii_value(str)` where `str` is a paramter that takes a string argument
  - If str is empty, return 0
  - Use the `string.chars` method to create an array of each character
  - Transform the array with the `array.map` method
    - Use the `string.ord` method to transform the string character to its ASCII value
  - Use the `array.sum` method to calculate the sum of all elements

=end

def ascii_value(str)
  0 if str.empty?
  str.chars.map { |char| char.ord }.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

p 'Four score'.ord.chr
