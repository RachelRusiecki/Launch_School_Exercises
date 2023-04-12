=begin

Problem:
- Input: array of strings
- Output: new array with the original string values but all vowels deleted

Explicit Rules:
- Method will take 1 argument, an array of strings
- Return value will be a new array containing the same strings but each string element has all vowels deleted

Implicit Rules:
- Arrays can have any amount of string elements
- Returned array will have the same number of elements as the original array
- If a string is all vowels, the returned element will be an empty string

Algorithm:
- Define a method called `remove_vowels` that takes 1 argument, an array of strings
  - Transform each element of the array
    - Delete all vowels from each string

=end

def remove_vowels(words)
  words.map { |word| word.delete('aeiouAEIOU') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
