=begin

Problem:
- Input: string
- Output: NEW string with all consecutive duplicate characters deleted

Explicit Rules:
- Method should take 1 string argument
- Return value will be a NEW string that has the value of the original string w/out any duplicate consecutive characters
- Cannot use the `squeeze` methods

Implicit Rules:
- All multiple consecutive duplicate characters will become 1 character, no metter how many there are in a row
- A single character will just return the same single character
- An empty string will just return an empty string

Algorithm:
- Define a method called `crunch` that takes 1 string argument
- Initialize a new string variable and assign it to an empty string
- Iterate through each character of the original string
  - Append the characters to the newly created string IF the last character does not equal the current one
- Return the new string

=end

def crunch(long_str)
  crunched_str = ''
  long_str.each_char { |char| crunched_str << char unless crunched_str.end_with?(char) }
  crunched_str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

# You may have noticed that we continue iterating until index points past the end of the string.
# As a result, on the last iteration test[index] is the last character in text, while text[index + 1] is nil. Why do we do this? 

# We need to include the nil comparison to make sure the last character is included.

# What happens if we stop iterating when index is equal to text.length - 1?

def crunch_ls(text)
  index = 0
  crunch_text = ''
  while index < text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p crunch_ls('ddaaiillyy ddoouubbllee')
p crunch_ls('4444abcabccba')
p crunch_ls('ggggggggggggggg')
p crunch_ls('a')
p crunch_ls('')

# If we stop iterating when index is equal to test.length - 1, the last charcter is not included in the method and so it's not icluded in the final string output.
