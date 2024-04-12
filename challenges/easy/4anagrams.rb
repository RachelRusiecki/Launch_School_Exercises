=begin

Problem:
- Input: array of strings
- Output: array

Explicit Rules:
- Return an array of all anagrams to the given string

Implicit Rules:
- Return empty array if no anagrams
- Anagrams will be the same length as the argument
- Letters can only be used once
- Do not include the same word as an anagram
- Characters are case insensitive

Data Structures:
- Iteration
- Strings

Algorithm:
- Create class called Anagram
  - Define initialize method that takes 1 string argumemt
    - Save string for later use
  - Define instance method called match that takes 1 array argument
    - Initialize empty results array variable
    - Iterate through each string in the array
      - Split the string
      - Sort the characters
      - If the new array is equal to the split sorted instance variable string
        - Append the word to the new empty results array
    - Return results array

=end

class Anagram
  def initialize(str)
    @str = str.downcase
  end

  def match(words)
    words.select do |word|
      @str.chars.sort == word.downcase.chars.sort && @str != word.downcase
    end
  end
end
