=begin

Problem:
- Input: string
- Output: array of strings

Explicit Rules:
- Method will take 1 string argument
- The return value will be an array of the original string's words w/ the number of characters separated by a space
- Assume words are substrings separated by exactly 1 space

Implicit Rules:
- Symbols, punctuation, etc count as characters
- An empty string argument will just return an empty array

Algorithm:
- Define a method called `word_lengths` that takes 1 argument, a string
  - Split the string into an array of words
  - Transform the array
    - Take the size of the string and append it to the string

=end

def word_lengths(str)
  str.split.map { |word| "#{word} #{word.size}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
