=begin

Problem:
- Input: string
- Output: substring of the seoond to last word

Explicit Rules:
- Write a method that takes 1 string argument
- The return value will be the second to last word in the string
- Words are any sequence of non-blank characters
- Assume the string will have at least 2 words

Implicit Rules:
- The returned string will be a new object
- Words are separated by spaces

Algorithm:
- Define a method called `penultimate` that takes 1 argument, a string containing at least 2 words
  - Split the string into an array of words
  - Return the string in the second to last index

=end

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

# Write a method that returns the middle word of a phrase or sentence. It should handle all of the edge cases you thought of.

def middle(str)
  if str.empty?
    ''
  elsif str.split.size.odd?
    str.split[str.split.size / 2]
  else
    str.split[(str.split.size / 2) - 1, 2].join(' ')
  end
end

p middle('middle word')
p middle('Launch School is really great!')
p middle('')
p middle('hello')
