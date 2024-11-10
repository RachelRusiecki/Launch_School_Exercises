=begin

Problem:
- Input: string
- Output: array of substrings

Explicit Rules:
- Method will take 1 argument, a string
- The return value will be an array of all substring combinations, no repeated elements
- The array should be sorted first by starting index, then by length

Implicit Rules:
- Assume strings are non-empty and valid

Alorithm:
- Define a method called `substrings` that takes 1 argument, a string
  - Initialize an empty array variable
  - Initialize a new variable and assign it to the value of string
  - Start a loop
    - Use the `leading` substrings method to find all the substrings starting at the first index
    - Append the full array to the new array
    - Reassign the new string variable to the value of the string without the first character
    - Break out of the loop when the new string variable is empty
  - Flatten the new array

=end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(str)
  result = []
  new_str = str
  until new_str.empty?
    result << leading_substrings(new_str)
    new_str.delete_prefix!(new_str[0])
  end
  result.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
