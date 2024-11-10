=begin

Problem:
- Input: integer
- Output: integer

Explicit Rules:
- A double number is a number w/ an even amount of digits whose left & right sides are identical (11, 2222, 345345, 6767)
- Method will take 1 argument, an integer
- If the number is a double number, return that number
- Otherwise, return the double of the number

Implicit Rules:
- All numbers will be whole (integers)
- All numbers will be positive

Algorithm:
- Define a method called `twice` that takes 1 argument, an integer
  - Convert the integer to a string
  - If the 1st half of the charaters match the 2nd half, then it is a double number
    - Return the original integer
  - If the 1st half of the characters do not match the 2nd half, then it is not a double number
    - Return the product of the number & 2

=end

def twice(num)
  return num * 2 if num.to_s.size == 1
  num.to_s[0..((num.to_s.size / 2) - 1)] == num.to_s[(num.to_s.size / 2)..] ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
