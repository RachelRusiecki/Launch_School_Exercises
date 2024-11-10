=begin

Problem:
- Input: string
- Output: new string

Explicit Rules:
- Method will take 1 argument, a string
- The return value will be a new string in which every consonant is doubled
- Everything else (vowels, digits, punctuation, spaces, etc) should not be doubled

Implicit Rules:
- An empty string argument should just reurn an empty string
- 'y' is considered an consonant even if used as a vowel

Algorithm:
- Define a method called `double_consonants` that takes 1 argument, a string
  - Initialize an empty string variable
  - Iterate through each character of the input string
    - If the character is a consonant, append it to the new string twice
    - Otherwise, just append it to the new string once
  - Return the new string

=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(str)
  result = ''
  str.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      2.times { result << char }
    else
      result << char
    end
  end
  result
end

p double_consonants('String') == 'SSttrrinngg'
p double_consonants('Hello-World!') == 'HHellllo-WWorrlldd!'
p double_consonants('July 4th') == 'JJullyy 4tthh'
p double_consonants('') == ''
