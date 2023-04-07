=begin

Problem:
- Input: string
- Output: string where each word has the first & last letter switched

Explicit Rules:
- Must switch the first and last letter of every word
- Words are separated by spaces
- Assume that every word contains at least 1 character
- Assume that the input string will contain at least 1 word
- Assume that each string contains just words & spaces

Implicit Rules:
- The returned string will have the same amount of words as the input string
- Capital letters will stay the same, i.e. 'Oh' will become 'hO'
- Strings with a single letters will just return the original string

Algorithm:
- Define a method called `swap` that takes a string argument
  - Initialize an empty array variable called `swapped_words`
  - Split the string into an array of words
  - Iterate through each word of the array
    - Initialize an empty string variable called 'new_word`
    - If the word is a single character, assign the `new_word` to the current word
    - Iterate through each character of the current word
      - Append the last character of the word to `new_word`
      - Append the second through second to last characters of the word to `new_word`
      - Append the first character of the word to `new_word`
    - Add the `new_word` to the `swapped_words` array
  - Join each word in the `swapped_words` array with a space in between to form a new string

=end

def swap(str)
  swapped_words = []
  str.split.each do |word|
    new_word = ''
    if word.size == 1
      new_word = word
    else
      new_word << word[-1]
      new_word << word[1..-2]
      new_word << word[0]
    end
    swapped_words << new_word
  end
  swapped_words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

def swap_first_last_characters(a, b)
  a, b = b, a
end

def swap_revised(words)
  result = words.split.map do |word|
    swap_first_last_characters(word[0], word[-1])
  end
  result.join(' ')
end

p swap_revised('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap_revised('Abcde') #== 'ebcdA'
p swap_revised('a') #== 'a'

# This method does not work because the `swap_first_last_character` method is just returning the first and last characters, not the whole word.
