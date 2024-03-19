=begin

Problem:
- Input: array, block
- Output: nil

Explicit Rules:
- Method will take 1 array argument
- Method will take a block
- 2 elements will be passed to block at a time
- May use each, each_with_object, each_with_index, reduce, loop, for, while, until
- Return nil

Implicit Rules:
- Array argument can be empty, will not iterate then

Data Structures:
- Arrays
- Blocks
- Iteration

Algorithm:
- Define method that takes 1 array argument
  - Iterate through array w/ index
    - Yield to block, passing in current element & element at index + 1 as block arguments
  - return nil

=end

def each_cons(arr)
  arr[0...-1].each_with_index { |ele, idx| yield(ele, arr[idx + 1]) }
  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil
