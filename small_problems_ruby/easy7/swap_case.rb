=begin

Problem:
- Input: string
- Output: new string

Explicit Rules:
- Method will take 1 argument, a string
- The return value will be a new string with all lowercase letters capitalized and all capital letters lowercased
- All other characters will be the same
- Cannot use the `swapcase` method

Implicit Rules:
- Assume all arguments are non-empty strings

Algorithm:
- Define a method called `swapcase` that takes 1 argument, a string
  - Initialize an empty string variable
  - Iterate through each character
    - If the character is a lowercase letter, capitalize it
    - If the character is a capital letter, lowercase it
    - If the character is neither (number, symbol, etc) do nothing
    - Append the characters to the empty string
  - Return the newly created string

=end

LOWERCASE_ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
UPPERCASE_ALPHABET = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

def swapcase(str)
  swapped_str = ''
  str.each_char do |char|
    if LOWERCASE_ALPHABET.include?(char)
      swapped_str << char.upcase
    elsif UPPERCASE_ALPHABET.include?(char)
      swapped_str << char.downcase
    else
      swapped_str << char
    end
  end
  swapped_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
