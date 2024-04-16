=begin

Problem:
- Input: string
- Output: nested array

Explicit Rules:
- Method will take 1 string argument of digits
- Return all consecutive substrings of the given length
- Raise an error if the length is greater then the digit string length

Implicit Rules:
- The return value should be a nested array w/ the digits shown as integers
- The error raised by having a length greater than the string length should be an ArgumentError

Data Structure:
- Series class
- Strings
- Nested iteration?

Algorithm:
- Define initialize method
  - Save the digit string as an instance variable
- Define slices method that takes 1 integer argument
  - Raise ArumentError if num
  - Initialize new empty array variable to return results
  - Find all n number substrings
    - Iterate from 0 through string length - n + 1
      - Append the character at the current index through n spaces to the result array
  - Transform each substring in the results array to subarrays

=end

class Series
  def initialize(digits_str)
    @digits_str = digits_str
  end

  def slices(length)
    raise ArgumentError if length > @digits_str.size
    @digits_str.chars.map(&:to_i).each_cons(length).to_a
  end
end
