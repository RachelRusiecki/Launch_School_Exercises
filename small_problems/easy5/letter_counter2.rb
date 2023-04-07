=begin

Problem:
- Input: string
- Output: hash containing integer pairs

Explicit Rules:
- Method will take 1 string argument containing 1 or mmore words
- Method should return a hash where the keys represent the number of characters of a word and the values represent the amount of words that have that amount of characters
- Words are substrings of letters only, so punctuation does not count as characters

Implicit Rules:
- An empty strings will return an empty hash

Algorithm:
- Define a method called `word_sizes` that takes a string argument
  - Initialize an empty hash variable named `letter_counter`
  - Delete all non-alphanumeric characters but keeping spaces
  - Split each word of the string into an array and assign it to a new array variable
  - Transform the array from words to the lengths of each word
  - Iterate though the array
    - The length of the words will become the keys and the values will be the count of occurences of that number
  - Return the `letter_counter` hash

=end

def word_sizes(str)
  letter_counter = {}
  phrase = str.delete('^a-zA-Z0-9 ').split.map { |word| word.size }
  phrase.each { |letter_size| letter_counter[letter_size] = phrase.count(letter_size) }
  letter_counter
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
