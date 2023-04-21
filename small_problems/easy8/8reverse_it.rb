=begin

Problem:
- Input: string
- Output: new string

Explicit Rules:
- Method will take 1 argument, a string
- The reurn value will be a bew string w/ the words reversed

Implicit Rules:
- Words will be reversed, but not characters
- Capitals & lowercase letters will stay the same
- An empty string argument will just return an empty string
- A string of just spaces will also return an empty string

Algorithm:
- Define a method called `reverse_sentence` that takes 1 argument, a string
  - Split the string into an array of words
  - Reverse the array
  - Join the words of the array back into a string
  - Delete any leading & trailing whitespace

=end

def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == ''
