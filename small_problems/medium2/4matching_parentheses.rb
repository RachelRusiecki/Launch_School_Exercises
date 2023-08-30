=begin

Problem:
- Input: string
- Output: boolean

Explicit Rules:
- Method will take 1 string argument.
- Method will return true if all parentheses are in a complete set ().
  - )( is not considered a complete set.
- Method will return false if the parentheses are not in a complete set.

Implicit Rules:
- Parentheses can be around any part of the string or nothing.
- Doubled up parentheses (()) will return true.
- If there are not parentheses, the method will return true.

Algorithm:
  - Initialize an empty array variable representing the stack.
  - Split the string into an array of characters.
  - Iterate through each character.
    - If the character is anything except a parentheses, skip to the next iteration.
    - If the character is a starting parentheses, append it to the stack array.
    - If the character is an ending parentheses...
      - If the last element of the stack array is a starting parentheses...
        - Pop the last element from the stack.
        - Go to the next iteration.
      - Return false if there are no starting parentheses in the stack.

=end

def balanced?(str)
  parens = 0
  str.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end
  parens.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false

# There are a few other characters that should be matching as well. Square brackets and curly brackets normally come in pairs.
# Quotation marks(single and double) also typically come in pairs and should be balanced. Can you expand this method to take into account those characters?

def balanced_all?(str)
  parens = 0
  square_brackets = 0
  curly_brackets = 0
  quotes = []

  str.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'

    square_brackets += 1 if char == '['
    square_brackets -= 1 if char == ']'

    curly_brackets += 1 if char == '{'
    curly_brackets -= 1 if char == '}'

    break if parens < 0 || square_brackets < 0 || curly_brackets < 0

    if char == "'"
      if quotes[-1] == "'"
        quotes.pop
      else
        quotes << char
      end
    elsif char == '"'
      if quotes[-1] == '"'
        quotes.pop
      else
        quotes << char
      end
    end
  end
  parens.zero? && square_brackets.zero? && curly_brackets.zero? && quotes.empty?
end

p balanced_all?(%q("'[What]' (is) {this?}")) == true
p balanced_all?(%q('What is] this?')) == false
p balanced_all?(%q('What {is this?')) == false
p balanced_all?(%q('"What" is this?')) == true
p balanced_all?(%q("What 'is" this?')) == false

