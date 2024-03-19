=begin

Problem:
- Input: array, block
- Output: largest element of array

Explicit Rules:
- Method will take 1 array argument
- Method will take a block
- Return the array element for which the block returns the largest value
- Return nil if array is empty
- May use each, each_with_object, each_with_index, reduce, loop, for, while, until, but no other iterating methods

Implicit Rules:
- Any objects can be compared, numbers, strings, etc.

Data Structures:
- Arrays
- Blocks
- Iteration

Algorithm:
- Define method that takes 1 array argument
  - Initialize variable
  - Iterate through the array
    - Yield each element to the block, passing in the element as block argument
    - If the return value of the block is larger than the current return value, reassign the new variable to the current element
  - Return the current element variable

=end

def max_by(arr)
  arr.reduce { |value, ele| yield(value) > yield(ele) ? value : ele }
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
