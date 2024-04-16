=begin

Problem:
Input: 3 numbers
Output: string

Explicit Rules:
- Method will determine if a triangle is equilateral, isosceles, or scalene given the lengths of sides
  - Equlateral = all sides equal
  - Isosceles = 2 sides equal
  - Scalene = all sides are different
- To ba a valid triangle:
  - All sides must be greater than 0
  - The sum of any 2 sides must be greater than the 3rd

Implicit Rules:
- Must create a Triangle class
- Will have an initialize method
- Argument can be integers or floats
- Will raise Argument Error if a triangle is invalid

Data Structures:
- Exceptions
- Case Statement

Algorithm:
- Define a method called kind that takes 3 number arguments
  - If any number is less than 0, raise an ArgumentError
  - If the sum of the 2 smallest sides is less than the 3rd side, raise an ArgumentError
  - Find the amount of unique values for the 3 sides
    - If value is 1, return 'eqiulateral'
    - If 2, return 'isoceles'
    - If 3, return 'scalene'

=end

class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    if [@side1, @side2, @side3].any? { |side| side <= 0 } ||
       [@side1, @side2, @side3].min(2).sum <= [@side1, @side2, @side3].max
      raise ArgumentError
    end
  end

  def kind
    return 'equilateral' if [@side1, @side2, @side3].uniq.size == 1
    return 'isosceles' if [@side1, @side2, @side3].uniq.size == 2
    'scalene'
  end
end
