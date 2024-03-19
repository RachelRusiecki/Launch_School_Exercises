=begin

Problem:
- Input: array, integer
- Output: nil

Explicit Rules:
- Method will take 2 arguments: array, integer
- Method will take a block
- The integer is the # of elements that will be passed to the block at a time
- May use each, each_index, each_with_object, reduce, loop, for, while, until, but no other iterating methods

Implicit Rules:
- Return nil
- Block will still only take 2 arguments, even if integer > 2

Data Structures:
- Arrays
- Blocks
- Iteration

Algorithm:
- Define method that takes 2 arguments: array & integer
  - Iterate through array w/ index
    - Yield to block, passing in current element & rnage of elements using indices as block arguments
  - Return nil

=end

def each_cons(arr, num)
  arr.each_index do |idx|
    break if idx + num - 1 >= arr.size
    yield(*arr[idx..(idx + num - 1)])
  end
  nil
end

hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash == {}
