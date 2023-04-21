=begin

Problem:
- Input: string
- Output: new string

Explicit Rules:
- Method will take 1 argument, a string w/ possibly multiple words
- The return value will be a new string containing the original words but words of 5 or more characters are reversed
- Assume each string only has letters & spaces

Implicit Rules:
- Capitals and lowercase letters should stary the same

Algorithm:
- Define a method called `reverse_words` that takes 1 argument, a string
  - Split the string into an array of words
  - Transform the words in the array
    - If the word is less than 5 characters, keep it the same
    - If the word is greater than 5 characters, reverse it
  - Join the words back into a string separated by spaces

=end

def reverse_words(str)
  result = str.split.map do |word|
    word.size < 5 ? word : word.reverse
  end
  result.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
