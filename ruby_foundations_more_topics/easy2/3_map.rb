=begin

Problem:
- Input: array
- Output: new array

Explicit Rules:
- Method will take 1 array argument
- Method will take a block
- Return value will be a new array of the return values of the block w/ each iteration
- Return new empty array if array argument is empty
- May only use: each, each_with_object, each_with_index, reduce, loop, for, while, until, no other iterating methods

Implicit Rules:
- Elements can be any object, even nested arrays

Data Structures:
- Arrays
- Iteration
- Blocks

Algorithm:
- Define method that takes 1 array argument
  - Initialize new empty array
  - Iterate thorugh the array argument
    - Yield to block, passing in each element as block argument
    - Append return value of block to new array
  - Return new array

=end

def map(arr)
  arr.each_with_object([]) { |ele, result| result << yield(ele) }
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]
p map({a: 1, b: 2, c: 3}) { |key, value| value**2 } == [1, 4, 9]
