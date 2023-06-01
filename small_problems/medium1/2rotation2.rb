=begin

Problem:
- Input: 2 integers
- Output: integer

Explicit Rules:
- Method will take 2 integer arguments
  - The 1st number is the number whose digits will be rotated
  - The 2nd number is how many digits will be rotated
- The last digits will be rotated
- Rotating just 1 digit results in the same number being returned
- You can use the previous `rotate_array` mrthod
- Assume the 2nd argument is always positive

Implicit Rules:
- Only 1 number will be rotated to the end, the others will remain in the original order

Algorithm:
- Define a method called `rotate_rightmost_digits` that takes 2 arguments, 2 integers, the 2nd representing the number og ending digits to be rotated
  - Transform the integer to a string
  - Split the string into an array
  - Count backwards on the array to whatever the 2nd argument is
  - That element should be rotated by using the previous `rotate_array` method
  - Join the array back into a string
  - Transform the string back into an integer

=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, digits_rotated)
  ([num.to_s.chars[0..-(digits_rotated + 1)]] + rotate_array(num.to_s.chars[-digits_rotated..-1])).flatten.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
