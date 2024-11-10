=begin

Problem:
- Input: string w/ non-alphabetic characters
- Output: string w/ non-alphabetic characters replaced with a single space

Explicit Rules:
- String input will consist of all lowercase letters and non-alphabetic characters
- Must replace all non-alphabetic characters with a space
- If more than 1 non-alphabetic character occurs in a row, only 1 space should replace them (no consecutive spaces)

Implicit Rules:
- Leading and trailing non-alphabetic characters will be replaced with a space

Algorithm:
- Define a method called `cleanup` that takes a string argument
  - Substitute all characters except for alphabetic characters with spaces
  - Delete any double spaces

=end

def cleanup(str)
  str.gsub(/[^a-z]/, ' ').squeeze(' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '
