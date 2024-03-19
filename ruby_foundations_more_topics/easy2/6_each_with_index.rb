=begin

Problem:
- Input: array, block
- Output: original array

Explicit Rules:
- Method will take 1 array argument
- Method will take a block
- Method will pass each array element and its index to the block
- Return original array
- May only use each, each_with_object, reduce, loop, for, while, until, no other iterating methods

Implict Rules:
- Indices will start at 0

Data Structures:
- Arrays
- Blocks
- Iteration

Algorithm:
- Define method that takes 1 array argument.
  - Initialize counter variable, set to 0
  - Iterate through array
    - Yield to block, passing in each element & counter as block arguments
    - Increase counter by 1
  - Return original array

=end

def each_with_index(arr)
  index = 0
  arr.each do |ele|
    yield(ele, index)
    index += 1
  end
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]
