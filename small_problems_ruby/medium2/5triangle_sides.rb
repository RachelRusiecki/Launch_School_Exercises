=begin

Problem:
- Input: 3 numbers
- Output: symbol

Explicit Rules:
- Method will take 3 number arguments representing the lengths of the sides of a triangle.
- Method will return a symbol representing the type of triangle.
  - Method will return :equilateral if all 3 numbers are equal but greater than 0.
  - Method will return :isosceles if 2 numbers are equal and the 3rd is greater than 0.
  - Method will return :scalene if all 3 numbers are different but the sum of the 2 lowest numbers is greater than the largest number.
  - Method will return :invalid if any of the numbers are equal to or less than 0 or if the sum of the 2 lowest numbers is less than the largest number.

Implicit Rules:
- Number arguments can be either integers or floats.

Algorithm:
- Define a method called `triangle` that takes 3 number arguments.
  - Return :invalid if any of the number arguments are equal to or less than 0.
  - Initialize an array containing all 3 numbers.
  - Call the .uniq method on the array to get the number of different elements.
  - Write a case statement.
    - When the unique element array has 1 element, return :equilateral.
    - When the unique element array has 2 elements...
      - Find the 2 lowest numbers.
      - Calculate the sum of those numbers.
      - Compare the sum to the largest number.
        - If the sum is greater than the largest number, return :isosceles.
        - If the sum is less than or equal to the largest number, return :invalid.
    - When the unique element array has 3 elements...
      - Calculate the sum of those numbers.
      - Compare the sum to the largest number.
        - If the sum is greater than the largest number, return :scalene.
        - If the sum is less than or equal to the largest number, return :invalid.

=end

def triangle(a, b, c)
  arr = [a, b, c]
  return :invalid if arr.any? { |side| side <= 0 }
  case arr.uniq.size
  when 1 then :equilateral
  when 2
    arr.min(2).sum > arr.max ? :isosceles : :invalid
  when 3
    arr.min(2).sum > arr.max ? :scalene : :invalid
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
