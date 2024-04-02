=begin

Problem:
- Input: number
- Output: string

Explicit Rules:
- Convert numbers to Roman numeral strings

Implicit Rules:
- Create class called RomanNumerals
- Create initialize method that takes 1 number argument
- Create method called to_roman
- Number arguments will all be whole, positive integers

Data Structures:
- Hash?
- Modulo?

Algorithm:
- Define method called to_roman that takes 1 integer argument
  - Initialize hash with keys as numbers & Roman numeral characters as values
  - Initialize empty string variable
  - Initialize divisor variable, set to 10
  -  Start a loop
    - Divide the argument by the divisor, find the remainder
      - Match the remainder to a value in the hash
      - Insert character value into the beginning of empty string
    - Increase the divisor by multiplying by 10
    - Break out of loop if divisor is greater than 1,000

=end

class RomanNumeral
  NUMS = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  CONVERSION = { 1 => 'I', 4 => 'IV', 5 => 'V', 9 => 'IX', 10 => 'X',
                 40 => 'XL', 50 => 'L', 90 => 'XC', 100 => 'C', 400 => 'CD',
                 500 => 'D', 900 => 'CM', 1000 => 'M' }

  def initialize(num)
    @num = num
  end

  def to_roman
    numerals = ''
    num = @num
    NUMS.each do |num_key|
      multiplier, num = num.divmod(num_key)
      numerals << CONVERSION[num_key] * multiplier
    end
    numerals
  end
end

  def to_roman
    numerals = ''
    num = @num
    CONVERSION.keys.reverse.each do |num_key|
      until num / num_key == 0
        numerals << CONVERSION[num_key]
        num -= num_key
      end
    end
    numerals
  end
