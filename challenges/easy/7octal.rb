=begin

Problem:
- Input: string
- Output: integer

Explicit Rules:
- Return the decimal number for a given octal string number
  - Rightmost digit gets multiplied by 8^0 (1)
  - Next digit gets multiplied by 8^1 (8)
  - Next digit gets multiplied by 8^2 (64), and so on...

Implicit Rules:
- Assume numbers are not negative
- Invalid arguments, such as letters should return 0
- Any digit that is an 8 or 9 is considered invalid

Data Structures:
- Octal class
- Strings
- Arrays

Algorithm:
- Define initialize method that takes 1 string argument
  - Save the string in an instance variable
- Define to_decimal method
  - Return 0 if string contains any character other than 0-7
  - Initialize power variable, set to 0
  - Split the string into an array of characters
  - Reverse array
  - Transform each character
    - Convert character to integer
    - Multiply integer by current 8^power
    - Increase power by 1
  - Return sum of transformed array

=end

class Octal
  def initialize(num)
    @num = num
  end

  def to_decimal
    return 0 if @num.match?(/[^0-7]/)
    result = []
    @num.to_i.digits.each_with_index { |n, idx| result << (n * (8**idx)) }
    result.sum
  end
end
