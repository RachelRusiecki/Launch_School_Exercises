=begin

Problem:
- Input: 1 array & 1 other object
- Output: boolean T or F

Explicit Rules:
- Method will take 2 arguments, an array, & an object representing what to check for in the array
- Method will return true if the search value is in the array, false if it isn't
- Cannot use the `include?` method

Implicit Rules:
- Everyhting will return false if the original array is empty, even `nil`

Algorithm:
- Define a method called `include?` that takes 2 arguments, an array & a search value
  - Check if any of the elements are equal to the search value

=end

def include?(arr, search_value)
  arr.any? { |element| element == search_value }
end

# Launch School's Solution:

# def include?(arr, search_value)
#   !!arr.find_index(search_value)
# end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
