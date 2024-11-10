=begin

Problem:
- Input: 3 integers
- Output: symbol

Explicit Rules:
- Method will takes 3 integer arguments representing the angles (in degrees) of a triangle.
- Method will return a symbol representing the type of triangle.
  - The sum of the angles must be equal to 180, so if they do not method will return :invalid.
  - All angles must be greater then 0, so if any are, method will return :invalid.
  - If the above conditions are met...
    - If the angles contains the integer 90, method will return :right.
    - If the angles are all less than 90, method will return :acute.
    - If any of the angles are greater than 90, method will return :obtuse.
- Assume all arguments are integers.

Implicit Rules:
- Assume all variables are valid integers.

Algorithm:
- Define a method called `triangle` that takes 3 integer arguments.
    - Return :invalid if the sum of the 3 integers does not equal 180 or any of the integers is less than or equal to 0.
    - Return :right if any of the integers is equal to 90.
    - Return :acute if all of the integers are less than 90.
    - Return :obtuse if any of the integers are greater than 90.

=end

def triangle(a, b, c)
  arr = [a, b, c]
  case
  when arr.sum != 180 || arr.any? { |angle| angle <= 0 } then :invalid
  when arr.include?(90) then :right
  when arr.all? { |angle| angle < 90 } then :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
