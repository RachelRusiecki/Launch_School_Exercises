=begin

Problem:
- Input: integer
- Output: integer

Explicit Rules:
- Method will take 1 integer argument
- The return value will be the maximum rotation of the integer
  - The maximum rotation is when you rotate the 1st digit to the end
  - Then on the next iteration, keep the 1st digit in place & rotate the remaining numbers
  - Then keep the first 2 digits in place & rotate the remining numbers, etc until all digits are fixed in place
- You can use the `rotate_rightmost_digits` method from the previous exercise
- You do not have to handle leading zeros, they will get dropped at the end

Implicit Rules:
- An integer w/ a single digit will just return the same digit

Algorithm:
- Define a method called 'max_rotation' that takes 1 argument, an integer
  - Initialize a counter variable and set it equal to the number of digits in the integer
  - Start a loop
    - Call the `rotate_rightmost_digits` method and pass in the integer as the 1st argument & the counter as the 2nd
    - Reassign the integer parameter to the result of the rotation
    - Decrease the counter by 1
    - Break out of the loop when the counter reaches 1
  - Return the new integer

=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, digits_rotated)
  ([num.to_s.chars[0..-(digits_rotated + 1)]] + rotate_array(num.to_s.chars[-digits_rotated..-1])).flatten.join
end

def max_rotation(num)
  counter = num.to_s.size
  until counter <= 1
    num = rotate_rightmost_digits(num, counter)
    counter -= 1
  end
  num.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(10005)

# Assume you do not have the rotate_rightmost_digits or rotate_array methods. How would you approach this problem?

def max_rotation_solo(num)
  result = []
  digits = num.to_s.chars
  until digits.empty?
    digits = digits[1..-1] + [digits[0]]
    result << digits[0]
    digits.shift
  end
  result.join.to_i
end

p max_rotation_solo(735291) == 321579
p max_rotation_solo(3) == 3
p max_rotation_solo(35) == 53
p max_rotation_solo(105) == 15 # the leading zero gets dropped
p max_rotation_solo(8_703_529_146) == 7_321_609_845
p max_rotation_solo(10005)
