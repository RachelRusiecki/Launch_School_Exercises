=begin

Problem:
- Input: text file
- Output: print the longest sentence & number of words in that sentence to the terminal

Explicit Rules:
- Program will need to read outside txt file
- Print the longest sentence, based on # of words, in the txt file to the terminal
- A sentence is anything ending in a '.', '!', or '?'
- A word is any sequence of characters separated by spaces.
- Words can be just punctuation as long as it is not sentence ending.
- Print the number of words in the longest sentence to the terminal

Implicit Rules:
- Titles will be counted in 1 sentence unless separated by sentence ending punctuation

Algorithm:
- Require that a txt file will be read
- Split the text into an array of sentences
- Iterate through the array
  - Split each sentence in the array into an array of words
  - Return the array with the largest amount of elements (words)
- Print the array joined by a space and the correct ending punctuation
- Print the size of the array

=end

def longest_sentence(txt)
  text = File.open(txt).read
  longest = text.split(/\.|\?|!/).max_by { |sentence| sentence.split.size}
  longest_idx = text.index(longest)
  longest << text[longest_idx + longest.size]
  puts longest
  puts "#{longest.split.size} words"
end

longest_sentence('longest_sentence.txt')

# To find longest paragraph...

def longest_paragraph(txt)
  text = File.open(txt).read
  longest = text.split(/\n\n/).max_by { |paragraph| paragraph.split.size }
  puts longest
  puts "#{longest.split.size} words"
end

longest_paragraph('longest_sentence.txt')

# To find the longest word...

def longest_word(txt)
  text = File.open(txt).read
  longest = text.split(/\W/).max_by {|word| word.size }
  puts longest
  puts "#{longest.size} letters"
end

longest_word('longest_sentence.txt')
