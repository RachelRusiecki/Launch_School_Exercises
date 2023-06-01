=begin

Problem:
- Input: array of strings
- Output: print arrays

Explicit Rules:
- Print out groups of words that are anagrams (words that have the same letters but in a different order)

Implicit Rules:
- The groups should be captured as arrays
- The output should put all arrays of anagrams

Algorithm:
- Initialize a string variable
- Start a loop
  - Assign the new string to the 1st element in the `words` array
  - Break if the `words` array is empty
  - Initialize an empty array variable
  - Append the current 1st string element to the new array
  - Delete the 1st element
  - Iterate through each of the remaining elements
    - Check if the characters of the element in the new array are the same as the characters in each word
      - If they are, append the string to the new array and delete it from the `words` array
      - If they are not, skip to the next iteration
  - print the new array

=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

current_word = ''

until words.empty?
  current_word = words.shift
  anagrams = []
  anagrams << current_word
  words.each { |word| anagrams << word if word.chars.sort == current_word.chars.sort }
  words.delete_if { |word| anagrams.include?(word) }
  p anagrams
end

# Launch School Way:

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end
