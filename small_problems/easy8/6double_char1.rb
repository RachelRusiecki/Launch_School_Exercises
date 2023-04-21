=begin

Problem:
- Input: string
- Output: new string

Explicit Rules:
- Method will take 1 argument, a string
- The return value will be a new string with every character doubled.

Implicit Rules:
- All characters are doubled, even punctuation
- An empty string argument will just return an empty string

Algorithm:
- Define a method called `repeater` that takes 1 argument, a string
  - Initialize an empty string variable
  - Start a loop using the index of the string argument
    - Append the character at the current index to the new empty string twice
  - Return the new string

=end

def repeater(str)
  double = ''
  str.each_char do |char|
    2.times { double << char }
  end
  double
end

p repeater('Hello') == 'HHeelllloo'
p repeater('Good job!') == 'GGoooodd  jjoobb!!'
p repeater('') == ''
