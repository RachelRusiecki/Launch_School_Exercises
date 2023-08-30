=begin

Problem:
- Input: string
- Output: boolean

Explicit Rules:
- Method will take 1 argument, a string.
- There are 13 blocks of letters & only 1 letter from each block can be used to form the string.
- The method should return TRUE if the string can be formed using only 1 letter from the letter blocks.
- The method should return FALSE if the string only can be formed using both letters in any given block.
- Each letter and each block can be used only once.

Implicit Rules:
- String arguments are not case sensitive.

Algorithm:
- Create a hash constant that has all the letters as the keys and all the corresponding letters in the block pairs as the values.
- Define a method called 'block_word?' that takes 1 string argument.
  - Initialize an empty array variable called 'check_letters'.
  - Split the string into and array of letters.
  - Iterate through the newly created array.
    - Append the first letter (in upcased form) to the empty array.
    - Also append the value in the hash of the letter to the array.
    - Return FALSE if the next letter is included in the 'check_letters' array.
  - Return TRUE if there are no new letters that appear in the 'check_letters' array once we have iterated through all characrters.

=end

LETTERS = { 'A' => 'N', 'B' => 'O', 'C' => 'P', 'D' => 'Q', 'E' => 'R', 'F' => 'S', 'G' => 'T', 'H' => 'U', 'I' => 'V', 'J' => 'W', 'K' => 'X', 'L' => 'Y', 'M' => 'Z',
            'N' => 'A', 'O' => 'B', 'P' => 'C', 'Q' => 'D', 'R' => 'E', 'S' => 'F', 'T' => 'G', 'U' => 'H', 'V' => 'I', 'W' => 'J', 'X' => 'K', 'Y' => 'L', 'Z' => 'M', }

def block_word?(word)
  check_letters = []
  word.chars.each do |letter|
    return false if  check_letters.include?(letter.upcase)
    check_letters << letter.upcase
    check_letters << LETTERS[letter.upcase]
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# Launch School's Method:

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end
