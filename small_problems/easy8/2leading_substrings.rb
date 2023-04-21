=begin

Problem:
- Input: string
- Output: array of substrings

Explicit Rules:
- Method will take 1 string argument
- The return value should be an array of all the substring combinations
- Start w/ the first character & add 1 each time
- The returned array should be sorted by the size of the string element

Implicit Rules:
- Assume all string arguments are non-empty

Algorithm:
- Define a method called `leading_strings` that takes 1 argument, a string
  - Initialize an empty array variable
  - Initialize an counter variable & set it equal to 1
  - Split the string into an array
  - Iterate through each character
    - Append the first character of the string to the new array along with any additional characters according to the counter
    - Increase the counter by 1

=end

def leading_substrings(str)
  result = []
  counter = 1
  str.each_char do |char|
    result << str[0, counter]
    counter += 1
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
