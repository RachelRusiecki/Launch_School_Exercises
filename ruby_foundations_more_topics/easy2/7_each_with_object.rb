=begin

Problem:
- Input: array, some other object, block
- Output: object argument

Explicit Rules:
- Method will take 2 arguments, an array & some object
- Method will take a block
- Return the final value of the new object
- May use each, each_with_index, reduce, loop, while, until, but no other iterating methods

Implicit Rules:
- The object argument will usually be a collection (such as array or hash)

Data Structures:
- Array
- Blocks
- Iteration

Algorithm:
- Define method that takes 2 arguments: array & some collection object
  - Iterate through array
    - Yield to block, passing in each element and object as block arguments
  - Return object

=end

def each_with_object(arr, obj)
  arr.each { |ele| yield(ele, obj) }
  obj
end

result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
end
p result == [1, 9, 25]

result = each_with_object([1, 3, 5], []) do |value, list|
  list << (1..value).to_a
end
p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

result = each_with_object([1, 3, 5], {}) do |value, hash|
  hash[value] = value**2
end
p result == { 1 => 1, 3 => 9, 5 => 25 }

result = each_with_object([], {}) do |value, hash|
  hash[value] = value * 2
end
p result == {}
